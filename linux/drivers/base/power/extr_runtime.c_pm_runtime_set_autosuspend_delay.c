
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int autosuspend_delay; int use_autosuspend; int lock; } ;
struct device {TYPE_1__ power; } ;


 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int update_autosuspend (struct device*,int,int) ;

void pm_runtime_set_autosuspend_delay(struct device *dev, int delay)
{
 int old_delay, old_use;

 spin_lock_irq(&dev->power.lock);
 old_delay = dev->power.autosuspend_delay;
 old_use = dev->power.use_autosuspend;
 dev->power.autosuspend_delay = delay;
 update_autosuspend(dev, old_delay, old_use);
 spin_unlock_irq(&dev->power.lock);
}
