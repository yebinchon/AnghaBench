
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int in_dpm_list; int entry; int completion; } ;
struct device {TYPE_2__ power; TYPE_1__* bus; } ;
struct TYPE_3__ {char* name; } ;


 int complete_all (int *) ;
 int dev_name (struct device*) ;
 int device_pm_check_callbacks (struct device*) ;
 scalar_t__ device_pm_not_required (struct device*) ;
 int device_wakeup_disable (struct device*) ;
 int dpm_list_mtx ;
 int list_del_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_remove (struct device*) ;
 int pr_debug (char*,char*,int ) ;

void device_pm_remove(struct device *dev)
{
 if (device_pm_not_required(dev))
  return;

 pr_debug("Removing info for %s:%s\n",
   dev->bus ? dev->bus->name : "No Bus", dev_name(dev));
 complete_all(&dev->power.completion);
 mutex_lock(&dpm_list_mtx);
 list_del_init(&dev->power.entry);
 dev->power.in_dpm_list = 0;
 mutex_unlock(&dpm_list_mtx);
 device_wakeup_disable(dev);
 pm_runtime_remove(dev);
 device_pm_check_callbacks(dev);
}
