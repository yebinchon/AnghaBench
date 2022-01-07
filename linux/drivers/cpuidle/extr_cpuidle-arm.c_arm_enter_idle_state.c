
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuidle_driver {int dummy; } ;
struct cpuidle_device {int dummy; } ;


 int CPU_PM_CPU_IDLE_ENTER (int ,int) ;
 int arm_cpuidle_suspend ;

__attribute__((used)) static int arm_enter_idle_state(struct cpuidle_device *dev,
    struct cpuidle_driver *drv, int idx)
{





 return CPU_PM_CPU_IDLE_ENTER(arm_cpuidle_suspend, idx);
}
