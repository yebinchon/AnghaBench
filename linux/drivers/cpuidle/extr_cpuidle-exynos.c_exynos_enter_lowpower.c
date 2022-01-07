
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuidle_driver {int safe_state_index; } ;
struct cpuidle_device {scalar_t__ cpu; } ;


 int arm_cpuidle_simple_enter (struct cpuidle_device*,struct cpuidle_driver*,int) ;
 int exynos_enter_aftr () ;
 int num_online_cpus () ;

__attribute__((used)) static int exynos_enter_lowpower(struct cpuidle_device *dev,
    struct cpuidle_driver *drv,
    int index)
{
 int new_index = index;


 if (num_online_cpus() > 1 || dev->cpu != 0)
  new_index = drv->safe_state_index;

 if (new_index == 0)
  return arm_cpuidle_simple_enter(dev, drv, new_index);

 exynos_enter_aftr();

 return new_index;
}
