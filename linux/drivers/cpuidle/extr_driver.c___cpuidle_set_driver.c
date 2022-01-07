
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuidle_driver {int dummy; } ;


 int EBUSY ;
 struct cpuidle_driver* cpuidle_curr_driver ;

__attribute__((used)) static inline int __cpuidle_set_driver(struct cpuidle_driver *drv)
{
 if (cpuidle_curr_driver)
  return -EBUSY;

 cpuidle_curr_driver = drv;

 return 0;
}
