
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ suspend_state_t ;


 int EINVAL ;
 scalar_t__ PM_SUSPEND_MEM ;
 int cpu_suspend (int ,int ) ;
 int tango_pm_powerdown ;

__attribute__((used)) static int tango_pm_enter(suspend_state_t state)
{
 if (state == PM_SUSPEND_MEM)
  return cpu_suspend(0, tango_pm_powerdown);

 return -EINVAL;
}
