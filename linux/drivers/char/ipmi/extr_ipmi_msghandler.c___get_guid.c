
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmi_smi {int * null_user_handler; int waitq; struct bmc_device* bmc; } ;
struct bmc_device {int dyn_guid_set; } ;


 int * guid_handler ;
 int send_guid_cmd (struct ipmi_smi*,int ) ;
 int smp_rmb () ;
 int wait_event (int ,int) ;

__attribute__((used)) static void __get_guid(struct ipmi_smi *intf)
{
 int rv;
 struct bmc_device *bmc = intf->bmc;

 bmc->dyn_guid_set = 2;
 intf->null_user_handler = guid_handler;
 rv = send_guid_cmd(intf, 0);
 if (rv)

  bmc->dyn_guid_set = 0;

 wait_event(intf->waitq, bmc->dyn_guid_set != 2);


 smp_rmb();

 intf->null_user_handler = ((void*)0);
}
