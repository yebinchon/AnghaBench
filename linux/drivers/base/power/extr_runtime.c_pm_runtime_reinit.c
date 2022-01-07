
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ runtime_status; int lock; scalar_t__ irq_safe; } ;
struct device {scalar_t__ parent; TYPE_1__ power; } ;


 scalar_t__ RPM_ACTIVE ;
 int pm_runtime_enabled (struct device*) ;
 int pm_runtime_put (scalar_t__) ;
 int pm_runtime_set_suspended (struct device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void pm_runtime_reinit(struct device *dev)
{
 if (!pm_runtime_enabled(dev)) {
  if (dev->power.runtime_status == RPM_ACTIVE)
   pm_runtime_set_suspended(dev);
  if (dev->power.irq_safe) {
   spin_lock_irq(&dev->power.lock);
   dev->power.irq_safe = 0;
   spin_unlock_irq(&dev->power.lock);
   if (dev->parent)
    pm_runtime_put(dev->parent);
  }
 }
}
