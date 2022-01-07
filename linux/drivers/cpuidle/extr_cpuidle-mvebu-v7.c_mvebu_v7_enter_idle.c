
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpuidle_driver {TYPE_1__* states; } ;
struct cpuidle_device {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 int MVEBU_V7_FLAG_DEEP_IDLE ;
 int cpu_pm_enter () ;
 int cpu_pm_exit () ;
 int mvebu_v7_cpu_suspend (int) ;

__attribute__((used)) static int mvebu_v7_enter_idle(struct cpuidle_device *dev,
    struct cpuidle_driver *drv,
    int index)
{
 int ret;
 bool deepidle = 0;
 cpu_pm_enter();

 if (drv->states[index].flags & MVEBU_V7_FLAG_DEEP_IDLE)
  deepidle = 1;

 ret = mvebu_v7_cpu_suspend(deepidle);
 cpu_pm_exit();

 if (ret)
  return ret;

 return index;
}
