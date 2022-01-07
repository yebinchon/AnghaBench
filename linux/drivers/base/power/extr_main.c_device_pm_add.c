
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int in_dpm_list; int entry; scalar_t__ is_prepared; } ;
struct device {TYPE_1__ power; struct device* parent; TYPE_2__* bus; } ;
struct TYPE_4__ {char* name; } ;


 int dev_name (struct device*) ;
 int dev_warn (struct device*,char*,int ) ;
 int device_pm_check_callbacks (struct device*) ;
 scalar_t__ device_pm_not_required (struct device*) ;
 int dpm_list ;
 int dpm_list_mtx ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*,char*,int ) ;

void device_pm_add(struct device *dev)
{

 if (device_pm_not_required(dev))
  return;

 pr_debug("Adding info for %s:%s\n",
   dev->bus ? dev->bus->name : "No Bus", dev_name(dev));
 device_pm_check_callbacks(dev);
 mutex_lock(&dpm_list_mtx);
 if (dev->parent && dev->parent->power.is_prepared)
  dev_warn(dev, "parent %s should not be sleeping\n",
   dev_name(dev->parent));
 list_add_tail(&dev->power.entry, &dpm_list);
 dev->power.in_dpm_list = 1;
 mutex_unlock(&dpm_list_mtx);
}
