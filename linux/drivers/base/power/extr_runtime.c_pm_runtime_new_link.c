
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; int links_count; } ;
struct device {TYPE_1__ power; } ;


 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void pm_runtime_new_link(struct device *dev)
{
 spin_lock_irq(&dev->power.lock);
 dev->power.links_count++;
 spin_unlock_irq(&dev->power.lock);
}
