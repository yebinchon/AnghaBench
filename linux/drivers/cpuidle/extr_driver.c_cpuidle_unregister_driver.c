
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuidle_driver {int dummy; } ;


 int __cpuidle_unregister_driver (struct cpuidle_driver*) ;
 int cpuidle_driver_lock ;
 struct cpuidle_driver* cpuidle_get_driver () ;
 int cpuidle_lock ;
 int * cpuidle_prev_governor ;
 int cpuidle_switch_governor (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void cpuidle_unregister_driver(struct cpuidle_driver *drv)
{
 bool enabled = (cpuidle_get_driver() == drv);

 spin_lock(&cpuidle_driver_lock);
 __cpuidle_unregister_driver(drv);
 spin_unlock(&cpuidle_driver_lock);

 if (!enabled)
  return;

 mutex_lock(&cpuidle_lock);
 if (cpuidle_prev_governor) {
  if (!cpuidle_switch_governor(cpuidle_prev_governor))
   cpuidle_prev_governor = ((void*)0);
 }
 mutex_unlock(&cpuidle_lock);
}
