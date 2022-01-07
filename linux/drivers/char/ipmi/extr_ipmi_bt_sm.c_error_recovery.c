
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct si_sm_data {int error_retries; int BT_CAP_retries; unsigned char seq; int state; TYPE_1__* io; int nonzero_status; int BT_CAP_req2rsp; int timeout; } ;
typedef enum si_sm_result { ____Placeholder_si_sm_result } si_sm_result ;
struct TYPE_2__ {int dev; } ;


 unsigned char BT_B_BUSY ;
 int BT_STATE_IDLE ;
 int BT_STATE_LONG_BUSY ;
 int BT_STATE_RESET1 ;
 int BT_STATE_RESTART ;
 unsigned char IPMI_NODE_BUSY_ERR ;

 int SI_SM_CALL_WITHOUT_DELAY ;
 int SI_SM_TRANSACTION_COMPLETE ;
 int STATE2TXT ;
 int STATUS2TXT ;
 int dev_err (int ,char*) ;
 int dev_warn (int ,char*,...) ;
 int force_result (struct si_sm_data*,unsigned char) ;
 int pr_cont (char*,int) ;

__attribute__((used)) static enum si_sm_result error_recovery(struct si_sm_data *bt,
     unsigned char status,
     unsigned char cCode)
{
 char *reason;

 bt->timeout = bt->BT_CAP_req2rsp;

 switch (cCode) {
 case 128:
  reason = "timeout";
  break;
 default:
  reason = "internal error";
  break;
 }

 dev_warn(bt->io->dev, "IPMI BT: %s in %s %s ",
   reason, STATE2TXT, STATUS2TXT);





 (bt->error_retries)++;
 if (bt->error_retries < bt->BT_CAP_retries) {
  pr_cont("%d retries left\n",
   bt->BT_CAP_retries - bt->error_retries);
  bt->state = BT_STATE_RESTART;
  return SI_SM_CALL_WITHOUT_DELAY;
 }

 dev_warn(bt->io->dev, "failed %d retries, sending error response\n",
   bt->BT_CAP_retries);
 if (!bt->nonzero_status)
  dev_err(bt->io->dev, "stuck, try power cycle\n");


 else if (bt->seq <= (unsigned char)(bt->BT_CAP_retries & 0xFF)) {
  dev_warn(bt->io->dev, "BT reset (takes 5 secs)\n");
  bt->state = BT_STATE_RESET1;
  return SI_SM_CALL_WITHOUT_DELAY;
 }






 bt->state = BT_STATE_IDLE;
 switch (cCode) {
 case 128:
  if (status & BT_B_BUSY) {
   cCode = IPMI_NODE_BUSY_ERR;
   bt->state = BT_STATE_LONG_BUSY;
  }
  break;
 default:
  break;
 }
 force_result(bt, cCode);
 return SI_SM_TRANSACTION_COMPLETE;
}
