
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct si_sm_data {unsigned char BT_CAP_req2rsp; unsigned char BT_CAP_retries; TYPE_1__* io; } ;
typedef enum si_sm_result { ____Placeholder_si_sm_result } si_sm_result ;
struct TYPE_2__ {int dev; } ;
typedef int GetBT_CAP ;
typedef int BT_CAP ;


 int BT_INTMASK_R ;
 int BT_STATUS ;
 int SI_SM_CALL_WITHOUT_DELAY ;
 int SI_SM_CALL_WITH_DELAY ;
 int SI_SM_CALL_WITH_TICK_DELAY ;
 unsigned char USEC_PER_SEC ;
 int bt_event (struct si_sm_data*,int ) ;
 int bt_get_result (struct si_sm_data*,unsigned char*,int) ;
 int bt_init_data (struct si_sm_data*,TYPE_1__*) ;
 int bt_start_transaction (struct si_sm_data*,unsigned char*,int) ;
 int dev_info (int ,char*,unsigned char,unsigned char) ;
 int dev_warn (int ,char*,...) ;
 int jiffies_to_usecs (int) ;
 int reset_flags (struct si_sm_data*) ;
 int schedule_timeout_uninterruptible (int) ;

__attribute__((used)) static int bt_detect(struct si_sm_data *bt)
{
 unsigned char GetBT_CAP[] = { 0x18, 0x36 };
 unsigned char BT_CAP[8];
 enum si_sm_result smi_result;
 int rv;
 if ((BT_STATUS == 0xFF) && (BT_INTMASK_R == 0xFF))
  return 1;
 reset_flags(bt);




 rv = bt_start_transaction(bt, GetBT_CAP, sizeof(GetBT_CAP));
 if (rv) {
  dev_warn(bt->io->dev,
    "Can't start capabilities transaction: %d\n", rv);
  goto out_no_bt_cap;
 }

 smi_result = SI_SM_CALL_WITHOUT_DELAY;
 for (;;) {
  if (smi_result == SI_SM_CALL_WITH_DELAY ||
      smi_result == SI_SM_CALL_WITH_TICK_DELAY) {
   schedule_timeout_uninterruptible(1);
   smi_result = bt_event(bt, jiffies_to_usecs(1));
  } else if (smi_result == SI_SM_CALL_WITHOUT_DELAY) {
   smi_result = bt_event(bt, 0);
  } else
   break;
 }

 rv = bt_get_result(bt, BT_CAP, sizeof(BT_CAP));
 bt_init_data(bt, bt->io);
 if (rv < 8) {
  dev_warn(bt->io->dev, "bt cap response too short: %d\n", rv);
  goto out_no_bt_cap;
 }

 if (BT_CAP[2]) {
  dev_warn(bt->io->dev, "Error fetching bt cap: %x\n", BT_CAP[2]);
out_no_bt_cap:
  dev_warn(bt->io->dev, "using default values\n");
 } else {
  bt->BT_CAP_req2rsp = BT_CAP[6] * USEC_PER_SEC;
  bt->BT_CAP_retries = BT_CAP[7];
 }

 dev_info(bt->io->dev, "req2rsp=%ld secs retries=%d\n",
   bt->BT_CAP_req2rsp / USEC_PER_SEC, bt->BT_CAP_retries);

 return 0;
}
