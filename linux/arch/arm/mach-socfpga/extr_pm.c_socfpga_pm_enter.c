
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int suspend_state_t ;


 int EINVAL ;

 int cpu_suspend (int ,int ) ;
 int outer_disable () ;
 int outer_resume () ;
 int socfpga_pm_suspend ;

__attribute__((used)) static int socfpga_pm_enter(suspend_state_t state)
{
 switch (state) {
 case 128:
  outer_disable();
  cpu_suspend(0, socfpga_pm_suspend);
  outer_resume();
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
