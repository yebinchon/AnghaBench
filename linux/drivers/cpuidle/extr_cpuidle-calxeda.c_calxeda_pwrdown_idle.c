
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuidle_driver {int dummy; } ;
struct cpuidle_device {int dummy; } ;


 int calxeda_idle_finish ;
 int cpu_pm_enter () ;
 int cpu_pm_exit () ;
 int cpu_suspend (int ,int ) ;

__attribute__((used)) static int calxeda_pwrdown_idle(struct cpuidle_device *dev,
    struct cpuidle_driver *drv,
    int index)
{
 cpu_pm_enter();
 cpu_suspend(0, calxeda_idle_finish);
 cpu_pm_exit();

 return index;
}
