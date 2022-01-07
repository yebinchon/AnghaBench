
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ipmi_smi {int waitq; int si_dev; struct bmc_device* bmc; } ;
struct TYPE_4__ {scalar_t__ netfn; scalar_t__ cmd; scalar_t__* data; scalar_t__ data_len; } ;
struct TYPE_3__ {scalar_t__ addr_type; } ;
struct ipmi_recv_msg {TYPE_2__ msg; TYPE_1__ addr; } ;
struct bmc_device {int dyn_guid_set; int fetch_guid; } ;
typedef int guid_t ;


 scalar_t__ IPMI_GET_DEVICE_GUID_CMD ;
 scalar_t__ IPMI_NETFN_APP_RESPONSE ;
 scalar_t__ IPMI_SYSTEM_INTERFACE_ADDR_TYPE ;
 scalar_t__ UUID_SIZE ;
 int dev_warn (int ,char*,scalar_t__,scalar_t__) ;
 int guid_copy (int *,int *) ;
 int smp_wmb () ;
 int wake_up (int *) ;

__attribute__((used)) static void guid_handler(struct ipmi_smi *intf, struct ipmi_recv_msg *msg)
{
 struct bmc_device *bmc = intf->bmc;

 if ((msg->addr.addr_type != IPMI_SYSTEM_INTERFACE_ADDR_TYPE)
     || (msg->msg.netfn != IPMI_NETFN_APP_RESPONSE)
     || (msg->msg.cmd != IPMI_GET_DEVICE_GUID_CMD))

  return;

 if (msg->msg.data[0] != 0) {

  bmc->dyn_guid_set = 0;
  goto out;
 }

 if (msg->msg.data_len < UUID_SIZE + 1) {
  bmc->dyn_guid_set = 0;
  dev_warn(intf->si_dev,
    "The GUID response from the BMC was too short, it was %d but should have been %d.  Assuming GUID is not available.\n",
    msg->msg.data_len, UUID_SIZE + 1);
  goto out;
 }

 guid_copy(&bmc->fetch_guid, (guid_t *)(msg->msg.data + 1));




 smp_wmb();
 bmc->dyn_guid_set = 1;
 out:
 wake_up(&intf->waitq);
}
