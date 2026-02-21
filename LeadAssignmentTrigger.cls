// Trigger: LeadAssignmentTrigger
// Purpose: Automatically assign new Leads to sales reps based on Lead Source

trigger LeadAssignmentTrigger on Lead (before insert) {
    for(Lead ld : Trigger.new){
        if(ld.LeadSource == 'Website'){
            ld.OwnerId = '005XXXXXXXXXXXX'; // Replace with Salesforce User Id
        } else if(ld.LeadSource == 'Referral'){
            ld.OwnerId = '005YYYYYYYYYYYY'; // Replace with Salesforce User Id
        }
    }
}
