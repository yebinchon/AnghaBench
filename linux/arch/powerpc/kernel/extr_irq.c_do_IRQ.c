
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int THREAD_SIZE ;
 int __do_irq (struct pt_regs*) ;
 int call_do_irq (struct pt_regs*,void*) ;
 int current_stack_pointer () ;
 void** hardirq_ctx ;
 size_t raw_smp_processor_id () ;
 struct pt_regs* set_irq_regs (struct pt_regs*) ;
 void** softirq_ctx ;
 scalar_t__ unlikely (int) ;

void do_IRQ(struct pt_regs *regs)
{
 struct pt_regs *old_regs = set_irq_regs(regs);
 void *cursp, *irqsp, *sirqsp;


 cursp = (void *)(current_stack_pointer() & ~(THREAD_SIZE - 1));
 irqsp = hardirq_ctx[raw_smp_processor_id()];
 sirqsp = softirq_ctx[raw_smp_processor_id()];


 if (unlikely(cursp == irqsp || cursp == sirqsp)) {
  __do_irq(regs);
  set_irq_regs(old_regs);
  return;
 }

 call_do_irq(regs, irqsp);

 set_irq_regs(old_regs);
}
