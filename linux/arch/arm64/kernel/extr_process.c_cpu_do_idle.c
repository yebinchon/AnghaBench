
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __cpu_do_idle () ;
 int __cpu_do_idle_irqprio () ;
 scalar_t__ system_uses_irq_prio_masking () ;

void cpu_do_idle(void)
{
 if (system_uses_irq_prio_masking())
  __cpu_do_idle_irqprio();
 else
  __cpu_do_idle();
}
