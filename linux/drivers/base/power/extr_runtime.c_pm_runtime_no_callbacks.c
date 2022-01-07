
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int no_callbacks; int lock; } ;
struct device {TYPE_1__ power; } ;


 scalar_t__ device_is_registered (struct device*) ;
 int rpm_sysfs_remove (struct device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void pm_runtime_no_callbacks(struct device *dev)
{
 spin_lock_irq(&dev->power.lock);
 dev->power.no_callbacks = 1;
 spin_unlock_irq(&dev->power.lock);
 if (device_is_registered(dev))
  rpm_sysfs_remove(dev);
}
