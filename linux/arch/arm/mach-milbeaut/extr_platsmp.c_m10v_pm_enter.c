
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int suspend_state_t ;




 int cpu_pm_enter () ;
 int cpu_pm_exit () ;
 int cpu_suspend (int ,int ) ;
 int m10v_die ;

__attribute__((used)) static int m10v_pm_enter(suspend_state_t state)
{
 switch (state) {
 case 128:
  asm("wfi");
  break;
 case 129:
  cpu_pm_enter();
  cpu_suspend(0, m10v_die);
  cpu_pm_exit();
  break;
 }
 return 0;
}
