
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned char u8 ;
struct TYPE_4__ {int dev; } ;
struct smi_info {TYPE_2__ io; int si_sm; TYPE_1__* handlers; } ;
struct TYPE_3__ {unsigned long (* get_result ) (int ,unsigned char*,int ) ;int (* start_transaction ) (int ,unsigned char*,int) ;} ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned char IPMI_GET_BMC_GLOBAL_ENABLES_CMD ;
 int IPMI_MAX_MSG_LENGTH ;
 int IPMI_NETFN_APP_REQUEST ;
 int dev_warn (int ,char*,unsigned long,...) ;
 int kfree (unsigned char*) ;
 unsigned char* kmalloc (int ,int ) ;
 int stub1 (int ,unsigned char*,int) ;
 unsigned long stub2 (int ,unsigned char*,int ) ;
 int wait_for_msg_done (struct smi_info*) ;

__attribute__((used)) static int get_global_enables(struct smi_info *smi_info, u8 *enables)
{
 unsigned char msg[3];
 unsigned char *resp;
 unsigned long resp_len;
 int rv;

 resp = kmalloc(IPMI_MAX_MSG_LENGTH, GFP_KERNEL);
 if (!resp)
  return -ENOMEM;

 msg[0] = IPMI_NETFN_APP_REQUEST << 2;
 msg[1] = IPMI_GET_BMC_GLOBAL_ENABLES_CMD;
 smi_info->handlers->start_transaction(smi_info->si_sm, msg, 2);

 rv = wait_for_msg_done(smi_info);
 if (rv) {
  dev_warn(smi_info->io.dev,
    "Error getting response from get global enables command: %d\n",
    rv);
  goto out;
 }

 resp_len = smi_info->handlers->get_result(smi_info->si_sm,
        resp, IPMI_MAX_MSG_LENGTH);

 if (resp_len < 4 ||
   resp[0] != (IPMI_NETFN_APP_REQUEST | 1) << 2 ||
   resp[1] != IPMI_GET_BMC_GLOBAL_ENABLES_CMD ||
   resp[2] != 0) {
  dev_warn(smi_info->io.dev,
    "Invalid return from get global enables command: %ld %x %x %x\n",
    resp_len, resp[0], resp[1], resp[2]);
  rv = -EINVAL;
  goto out;
 } else {
  *enables = resp[3];
 }

out:
 kfree(resp);
 return rv;
}
