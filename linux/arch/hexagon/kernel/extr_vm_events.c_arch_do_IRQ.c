
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int generic_handle_irq (int) ;
 int irq_enter () ;
 int irq_exit () ;
 int pt_cause (struct pt_regs*) ;
 struct pt_regs* set_irq_regs (struct pt_regs*) ;

void arch_do_IRQ(struct pt_regs *regs)
{
 int irq = pt_cause(regs);
 struct pt_regs *old_regs = set_irq_regs(regs);

 irq_enter();
 generic_handle_irq(irq);
 irq_exit();
 set_irq_regs(old_regs);
}
