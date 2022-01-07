
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuidle_driver {int dummy; } ;
struct cpuidle_device {int cpu; } ;
typedef enum cps_pm_state { ____Placeholder_cps_pm_state } cps_pm_state ;


 int BUG () ;
 int CPS_PM_CLOCK_GATED ;
 int CPS_PM_NC_WAIT ;
 int CPS_PM_POWER_GATED ;
 int EINTR ;
 int EINVAL ;



 int cps_pm_enter_state (int) ;
 scalar_t__ cpu_pm_enter () ;
 int cpu_pm_exit () ;
 scalar_t__ cpus_are_siblings (int ,int ) ;

__attribute__((used)) static int cps_nc_enter(struct cpuidle_device *dev,
   struct cpuidle_driver *drv, int index)
{
 enum cps_pm_state pm_state;
 int err;
 if (cpus_are_siblings(0, dev->cpu) && (index > 129))
  index = 129;


 switch (index) {
 case 129:
  pm_state = CPS_PM_NC_WAIT;
  break;
 case 130:
  pm_state = CPS_PM_CLOCK_GATED;
  break;
 case 128:
  pm_state = CPS_PM_POWER_GATED;
  break;
 default:
  BUG();
  return -EINVAL;
 }


 if ((pm_state == CPS_PM_POWER_GATED) && cpu_pm_enter())
  return -EINTR;


 err = cps_pm_enter_state(pm_state);


 if (pm_state == CPS_PM_POWER_GATED)
  cpu_pm_exit();

 return err ?: index;
}
