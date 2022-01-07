
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int runtime_auto; int lock; int usage_count; } ;
struct device {TYPE_1__ power; } ;


 int RPM_ASYNC ;
 int RPM_AUTO ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int rpm_idle (struct device*,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void pm_runtime_allow(struct device *dev)
{
 spin_lock_irq(&dev->power.lock);
 if (dev->power.runtime_auto)
  goto out;

 dev->power.runtime_auto = 1;
 if (atomic_dec_and_test(&dev->power.usage_count))
  rpm_idle(dev, RPM_AUTO | RPM_ASYNC);

 out:
 spin_unlock_irq(&dev->power.lock);
}
