
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSR_IDLE ;
 int MSR_KERNEL ;
 int __ppc64_runlatch_off () ;
 int __ppc64_runlatch_on () ;
 int fini_irq_for_idle_irqsoff () ;
 int irq_set_pending_from_srr1 (unsigned long) ;
 int mtmsr (int ) ;
 unsigned long power7_idle_insn (unsigned long) ;
 int prep_irq_for_idle_irqsoff () ;

void power7_idle_type(unsigned long type)
{
 unsigned long srr1;

 if (!prep_irq_for_idle_irqsoff())
  return;

 mtmsr(MSR_IDLE);
 __ppc64_runlatch_off();
 srr1 = power7_idle_insn(type);
 __ppc64_runlatch_on();
 mtmsr(MSR_KERNEL);

 fini_irq_for_idle_irqsoff();
 irq_set_pending_from_srr1(srr1);
}
