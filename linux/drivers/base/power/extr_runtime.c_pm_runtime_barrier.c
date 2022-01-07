
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ request; int lock; scalar_t__ request_pending; } ;
struct device {TYPE_1__ power; } ;


 scalar_t__ RPM_REQ_RESUME ;
 int __pm_runtime_barrier (struct device*) ;
 int pm_runtime_get_noresume (struct device*) ;
 int pm_runtime_put_noidle (struct device*) ;
 int rpm_resume (struct device*,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

int pm_runtime_barrier(struct device *dev)
{
 int retval = 0;

 pm_runtime_get_noresume(dev);
 spin_lock_irq(&dev->power.lock);

 if (dev->power.request_pending
     && dev->power.request == RPM_REQ_RESUME) {
  rpm_resume(dev, 0);
  retval = 1;
 }

 __pm_runtime_barrier(dev);

 spin_unlock_irq(&dev->power.lock);
 pm_runtime_put_noidle(dev);

 return retval;
}
