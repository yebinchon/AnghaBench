
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int can_wakeup; int entry; } ;
struct device {TYPE_1__ power; } ;


 int dev_info (struct device*,char*) ;
 scalar_t__ device_is_registered (struct device*) ;
 int list_empty (int *) ;
 int wakeup_sysfs_add (struct device*) ;
 int wakeup_sysfs_remove (struct device*) ;

void device_set_wakeup_capable(struct device *dev, bool capable)
{
 if (!!dev->power.can_wakeup == !!capable)
  return;

 dev->power.can_wakeup = capable;
 if (device_is_registered(dev) && !list_empty(&dev->power.entry)) {
  if (capable) {
   int ret = wakeup_sysfs_add(dev);

   if (ret)
    dev_info(dev, "Wakeup sysfs attributes not added\n");
  } else {
   wakeup_sysfs_remove(dev);
  }
 }
}
