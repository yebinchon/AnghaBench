
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int local_irq_enable () ;
 int sparc_idle () ;
 int stub1 () ;

void arch_cpu_idle(void)
{
 if (sparc_idle)
  (*sparc_idle)();
 local_irq_enable();
}
