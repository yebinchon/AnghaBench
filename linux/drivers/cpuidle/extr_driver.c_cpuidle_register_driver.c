
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuidle_governor {int dummy; } ;
struct cpuidle_driver {scalar_t__ governor; } ;


 int __cpuidle_register_driver (struct cpuidle_driver*) ;
 int * cpuidle_curr_governor ;
 int cpuidle_driver_lock ;
 struct cpuidle_governor* cpuidle_find_governor (scalar_t__) ;
 struct cpuidle_driver* cpuidle_get_driver () ;
 int cpuidle_lock ;
 int * cpuidle_prev_governor ;
 scalar_t__ cpuidle_switch_governor (struct cpuidle_governor*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int param_governor ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int strlen (int ) ;

int cpuidle_register_driver(struct cpuidle_driver *drv)
{
 struct cpuidle_governor *gov;
 int ret;

 spin_lock(&cpuidle_driver_lock);
 ret = __cpuidle_register_driver(drv);
 spin_unlock(&cpuidle_driver_lock);

 if (!ret && !strlen(param_governor) && drv->governor &&
     (cpuidle_get_driver() == drv)) {
  mutex_lock(&cpuidle_lock);
  gov = cpuidle_find_governor(drv->governor);
  if (gov) {
   cpuidle_prev_governor = cpuidle_curr_governor;
   if (cpuidle_switch_governor(gov) < 0)
    cpuidle_prev_governor = ((void*)0);
  }
  mutex_unlock(&cpuidle_lock);
 }

 return ret;
}
