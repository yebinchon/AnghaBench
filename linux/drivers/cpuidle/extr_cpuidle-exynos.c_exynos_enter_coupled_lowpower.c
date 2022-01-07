
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpuidle_driver {int dummy; } ;
struct cpuidle_device {scalar_t__ cpu; } ;
struct TYPE_2__ {int (* cpu1_powerdown ) () ;int (* cpu0_enter_aftr ) () ;int (* post_enter_aftr ) () ;int (* pre_enter_aftr ) () ;} ;


 int cpuidle_coupled_parallel_barrier (struct cpuidle_device*,int *) ;
 TYPE_1__* exynos_cpuidle_pdata ;
 int exynos_idle_barrier ;
 int stub1 () ;
 int stub2 () ;
 int stub3 () ;
 int stub4 () ;

__attribute__((used)) static int exynos_enter_coupled_lowpower(struct cpuidle_device *dev,
      struct cpuidle_driver *drv,
      int index)
{
 int ret;

 exynos_cpuidle_pdata->pre_enter_aftr();




 cpuidle_coupled_parallel_barrier(dev, &exynos_idle_barrier);




 ret = dev->cpu ? exynos_cpuidle_pdata->cpu1_powerdown()
         : exynos_cpuidle_pdata->cpu0_enter_aftr();
 if (ret)
  index = ret;




 cpuidle_coupled_parallel_barrier(dev, &exynos_idle_barrier);

 exynos_cpuidle_pdata->post_enter_aftr();

 return index;
}
