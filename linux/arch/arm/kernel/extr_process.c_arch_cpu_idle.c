
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int arm_pm_idle () ;
 int cpu_do_idle () ;
 int local_irq_enable () ;

void arch_cpu_idle(void)
{
 if (arm_pm_idle)
  arm_pm_idle();
 else
  cpu_do_idle();
 local_irq_enable();
}
