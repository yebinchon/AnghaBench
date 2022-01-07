
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuidle_driver {int refcnt; } ;


 int cpuidle_driver_lock ;
 struct cpuidle_driver* cpuidle_get_driver () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

struct cpuidle_driver *cpuidle_driver_ref(void)
{
 struct cpuidle_driver *drv;

 spin_lock(&cpuidle_driver_lock);

 drv = cpuidle_get_driver();
 if (drv)
  drv->refcnt++;

 spin_unlock(&cpuidle_driver_lock);
 return drv;
}
