
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuidle_driver {scalar_t__ refcnt; } ;


 int WARN_ON (int) ;
 int cpuidle_driver_lock ;
 struct cpuidle_driver* cpuidle_get_driver () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void cpuidle_driver_unref(void)
{
 struct cpuidle_driver *drv;

 spin_lock(&cpuidle_driver_lock);

 drv = cpuidle_get_driver();
 if (drv && !WARN_ON(drv->refcnt <= 0))
  drv->refcnt--;

 spin_unlock(&cpuidle_driver_lock);
}
