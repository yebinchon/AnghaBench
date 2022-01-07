
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuidle_driver {int cpumask; scalar_t__ bctimer; int state_count; } ;


 int EINVAL ;
 int ENODEV ;
 int __cpuidle_driver_init (struct cpuidle_driver*) ;
 int __cpuidle_set_driver (struct cpuidle_driver*) ;
 int cpuidle_coupled_state_verify (struct cpuidle_driver*) ;
 scalar_t__ cpuidle_disabled () ;
 int cpuidle_setup_broadcast_timer ;
 int on_each_cpu_mask (int ,int ,void*,int) ;

__attribute__((used)) static int __cpuidle_register_driver(struct cpuidle_driver *drv)
{
 int ret;

 if (!drv || !drv->state_count)
  return -EINVAL;

 ret = cpuidle_coupled_state_verify(drv);
 if (ret)
  return ret;

 if (cpuidle_disabled())
  return -ENODEV;

 __cpuidle_driver_init(drv);

 ret = __cpuidle_set_driver(drv);
 if (ret)
  return ret;

 if (drv->bctimer)
  on_each_cpu_mask(drv->cpumask, cpuidle_setup_broadcast_timer,
     (void *)1, 1);

 return 0;
}
