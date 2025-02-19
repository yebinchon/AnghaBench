
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smi_info {int supports_event_msg_buff; int si_sm; TYPE_1__* handlers; } ;
struct TYPE_2__ {unsigned long (* get_result ) (int ,unsigned char*,int ) ;int (* start_transaction ) (int ,unsigned char*,int) ;} ;


 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned char IPMI_BMC_EVT_MSG_BUFF ;
 unsigned char IPMI_GET_BMC_GLOBAL_ENABLES_CMD ;
 int IPMI_MAX_MSG_LENGTH ;
 int IPMI_NETFN_APP_REQUEST ;
 unsigned char IPMI_SET_BMC_GLOBAL_ENABLES_CMD ;
 int kfree (unsigned char*) ;
 unsigned char* kmalloc (int ,int ) ;
 int pr_warn (char*) ;
 int stub1 (int ,unsigned char*,int) ;
 unsigned long stub2 (int ,unsigned char*,int ) ;
 int stub3 (int ,unsigned char*,int) ;
 unsigned long stub4 (int ,unsigned char*,int ) ;
 int wait_for_msg_done (struct smi_info*) ;

__attribute__((used)) static int try_enable_event_buffer(struct smi_info *smi_info)
{
 unsigned char msg[3];
 unsigned char *resp;
 unsigned long resp_len;
 int rv = 0;

 resp = kmalloc(IPMI_MAX_MSG_LENGTH, GFP_KERNEL);
 if (!resp)
  return -ENOMEM;

 msg[0] = IPMI_NETFN_APP_REQUEST << 2;
 msg[1] = IPMI_GET_BMC_GLOBAL_ENABLES_CMD;
 smi_info->handlers->start_transaction(smi_info->si_sm, msg, 2);

 rv = wait_for_msg_done(smi_info);
 if (rv) {
  pr_warn("Error getting response from get global enables command, the event buffer is not enabled\n");
  goto out;
 }

 resp_len = smi_info->handlers->get_result(smi_info->si_sm,
        resp, IPMI_MAX_MSG_LENGTH);

 if (resp_len < 4 ||
   resp[0] != (IPMI_NETFN_APP_REQUEST | 1) << 2 ||
   resp[1] != IPMI_GET_BMC_GLOBAL_ENABLES_CMD ||
   resp[2] != 0) {
  pr_warn("Invalid return from get global enables command, cannot enable the event buffer\n");
  rv = -EINVAL;
  goto out;
 }

 if (resp[3] & IPMI_BMC_EVT_MSG_BUFF) {

  smi_info->supports_event_msg_buff = 1;
  goto out;
 }

 msg[0] = IPMI_NETFN_APP_REQUEST << 2;
 msg[1] = IPMI_SET_BMC_GLOBAL_ENABLES_CMD;
 msg[2] = resp[3] | IPMI_BMC_EVT_MSG_BUFF;
 smi_info->handlers->start_transaction(smi_info->si_sm, msg, 3);

 rv = wait_for_msg_done(smi_info);
 if (rv) {
  pr_warn("Error getting response from set global, enables command, the event buffer is not enabled\n");
  goto out;
 }

 resp_len = smi_info->handlers->get_result(smi_info->si_sm,
        resp, IPMI_MAX_MSG_LENGTH);

 if (resp_len < 3 ||
   resp[0] != (IPMI_NETFN_APP_REQUEST | 1) << 2 ||
   resp[1] != IPMI_SET_BMC_GLOBAL_ENABLES_CMD) {
  pr_warn("Invalid return from get global, enables command, not enable the event buffer\n");
  rv = -EINVAL;
  goto out;
 }

 if (resp[2] != 0)




  rv = -ENOENT;
 else
  smi_info->supports_event_msg_buff = 1;

out:
 kfree(resp);
 return rv;
}
