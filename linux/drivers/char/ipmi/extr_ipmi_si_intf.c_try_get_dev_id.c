
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smi_info {int device_id; int si_sm; TYPE_1__* handlers; } ;
struct TYPE_2__ {unsigned long (* get_result ) (int ,unsigned char*,int ) ;int (* start_transaction ) (int ,unsigned char*,int) ;} ;


 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned char IPMI_GET_DEVICE_ID_CMD ;
 int IPMI_MAX_MSG_LENGTH ;
 int IPMI_NETFN_APP_REQUEST ;
 int ipmi_demangle_device_id (unsigned char,unsigned char,unsigned char*,unsigned long,int *) ;
 int kfree (unsigned char*) ;
 unsigned char* kmalloc (int ,int ) ;
 int stub1 (int ,unsigned char*,int) ;
 unsigned long stub2 (int ,unsigned char*,int ) ;
 int wait_for_msg_done (struct smi_info*) ;

__attribute__((used)) static int try_get_dev_id(struct smi_info *smi_info)
{
 unsigned char msg[2];
 unsigned char *resp;
 unsigned long resp_len;
 int rv = 0;

 resp = kmalloc(IPMI_MAX_MSG_LENGTH, GFP_KERNEL);
 if (!resp)
  return -ENOMEM;





 msg[0] = IPMI_NETFN_APP_REQUEST << 2;
 msg[1] = IPMI_GET_DEVICE_ID_CMD;
 smi_info->handlers->start_transaction(smi_info->si_sm, msg, 2);

 rv = wait_for_msg_done(smi_info);
 if (rv)
  goto out;

 resp_len = smi_info->handlers->get_result(smi_info->si_sm,
        resp, IPMI_MAX_MSG_LENGTH);


 rv = ipmi_demangle_device_id(resp[0] >> 2, resp[1],
   resp + 2, resp_len - 2, &smi_info->device_id);

out:
 kfree(resp);
 return rv;
}
