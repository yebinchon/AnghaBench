
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int runtime_auto; int lock; int usage_count; } ;
struct device {TYPE_1__ power; } ;


 int atomic_inc (int *) ;
 int rpm_resume (struct device*,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void pm_runtime_forbid(struct device *dev)
{
 spin_lock_irq(&dev->power.lock);
 if (!dev->power.runtime_auto)
  goto out;

 dev->power.runtime_auto = 0;
 atomic_inc(&dev->power.usage_count);
 rpm_resume(dev, 0);

 out:
 spin_unlock_irq(&dev->power.lock);
}
