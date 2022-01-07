
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cpuidle_driver {int dummy; } ;
struct cpuidle_device {int dummy; } ;


 int CPU_PM_CPU_IDLE_ENTER_PARAM (int ,int,int ) ;
 int * __this_cpu_read (int ) ;
 int psci_cpu_suspend_enter ;
 int psci_power_state ;

__attribute__((used)) static int psci_enter_idle_state(struct cpuidle_device *dev,
    struct cpuidle_driver *drv, int idx)
{
 u32 *state = __this_cpu_read(psci_power_state);

 return CPU_PM_CPU_IDLE_ENTER_PARAM(psci_cpu_suspend_enter,
        idx, state[idx - 1]);
}
