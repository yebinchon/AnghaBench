
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuidle_driver {int dummy; } ;


 struct cpuidle_driver* cpuidle_curr_driver ;

__attribute__((used)) static inline void __cpuidle_unset_driver(struct cpuidle_driver *drv)
{
 if (drv == cpuidle_curr_driver)
  cpuidle_curr_driver = ((void*)0);
}
