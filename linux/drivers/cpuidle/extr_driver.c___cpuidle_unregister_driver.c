
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuidle_driver {scalar_t__ refcnt; int cpumask; scalar_t__ bctimer; } ;


 scalar_t__ WARN_ON (int) ;
 int __cpuidle_unset_driver (struct cpuidle_driver*) ;
 int cpuidle_setup_broadcast_timer ;
 int on_each_cpu_mask (int ,int ,int *,int) ;

__attribute__((used)) static void __cpuidle_unregister_driver(struct cpuidle_driver *drv)
{
 if (WARN_ON(drv->refcnt > 0))
  return;

 if (drv->bctimer) {
  drv->bctimer = 0;
  on_each_cpu_mask(drv->cpumask, cpuidle_setup_broadcast_timer,
     ((void*)0), 1);
 }

 __cpuidle_unset_driver(drv);
}
