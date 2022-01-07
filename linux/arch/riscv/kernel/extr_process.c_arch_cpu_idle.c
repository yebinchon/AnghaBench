
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int local_irq_enable () ;
 int wait_for_interrupt () ;

void arch_cpu_idle(void)
{
 wait_for_interrupt();
 local_irq_enable();
}
