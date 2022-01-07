
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ links_count; int lock; } ;
struct device {TYPE_1__ power; } ;


 int WARN_ON (int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void pm_runtime_drop_link(struct device *dev)
{
 spin_lock_irq(&dev->power.lock);
 WARN_ON(dev->power.links_count == 0);
 dev->power.links_count--;
 spin_unlock_irq(&dev->power.lock);
}
