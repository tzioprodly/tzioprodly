public class TzioClass3 {
  public String getPostCalloutResponseContents() {

    // Instantiate a new Http object
    Http h = new Http();

    // Instantiate a new HTTP request
    // Specify request properties such as the endpoint, the POST method, etc. 
    HttpRequest req = new HttpRequest();
      req.setHeader('Authorization', 'Bearer ' + UserInfo.getSessionId());
    req.setEndpoint('https://appopsdev25.my.salesforce.com/services/apexrest/PDRI/instances');
    req.setMethod('POST');
    req.setHeader('Content-Type', 'application/json');
    req.setBody('{"environment":{"dataSetIds":["a088c00001JWXXHAA5"],"deploymentPlanIds":[],"durationDays":30,"envType":"scratch_org","forceDataDeployment":false,"metadataFilterId":"a068c00000so6g8AAA","metadataRollbackOnError":true,"orgName":"New Scratch Org","packageIds":[],"sourcePlatformInstanceId":"00D8c000004sPcPEAU","username":"tkyprianou@prodly.co"}}');

    // Send the request, and return a response
    HttpResponse res = h.send(req);
    return res.getBody();
  }
}