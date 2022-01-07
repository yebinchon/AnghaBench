
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int suspend_state_t ;


 int EINVAL ;

 int cpu_suspend (int ,int ) ;
 int outer_disable () ;
 int outer_resume () ;
 int sirfsoc_finish_suspend ;
 int sirfsoc_pre_suspend_power_off () ;

__attribute__((used)) static int sirfsoc_pm_enter(suspend_state_t state)
{
 switch (state) {
 case 128:
  sirfsoc_pre_suspend_power_off();

  outer_disable();

  cpu_suspend(0, sirfsoc_finish_suspend);
  outer_resume();
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
