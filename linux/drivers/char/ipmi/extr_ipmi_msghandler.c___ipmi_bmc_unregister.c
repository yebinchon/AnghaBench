
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int kobj; } ;
struct TYPE_6__ {TYPE_2__ dev; } ;
struct bmc_device {int usecount; int dyn_mutex; TYPE_3__ pdev; } ;
struct ipmi_smi {int bmc_registered; char* my_dev_name; struct bmc_device tmp_bmc; struct bmc_device* bmc; int bmc_link; TYPE_1__* si_dev; } ;
struct TYPE_4__ {int kobj; } ;


 int cleanup_bmc_device ;
 int kfree (char*) ;
 int kref_put (int *,int ) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sysfs_remove_link (int *,char*) ;

__attribute__((used)) static void __ipmi_bmc_unregister(struct ipmi_smi *intf)
{
 struct bmc_device *bmc = intf->bmc;

 if (!intf->bmc_registered)
  return;

 sysfs_remove_link(&intf->si_dev->kobj, "bmc");
 sysfs_remove_link(&bmc->pdev.dev.kobj, intf->my_dev_name);
 kfree(intf->my_dev_name);
 intf->my_dev_name = ((void*)0);

 mutex_lock(&bmc->dyn_mutex);
 list_del(&intf->bmc_link);
 mutex_unlock(&bmc->dyn_mutex);
 intf->bmc = &intf->tmp_bmc;
 kref_put(&bmc->usecount, cleanup_bmc_device);
 intf->bmc_registered = 0;
}
