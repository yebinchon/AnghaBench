
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int irq_safe; int lock; } ;
struct device {TYPE_1__ power; scalar_t__ parent; } ;


 int pm_runtime_get_sync (scalar_t__) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void pm_runtime_irq_safe(struct device *dev)
{
 if (dev->parent)
  pm_runtime_get_sync(dev->parent);
 spin_lock_irq(&dev->power.lock);
 dev->power.irq_safe = 1;
 spin_unlock_irq(&dev->power.lock);
}
