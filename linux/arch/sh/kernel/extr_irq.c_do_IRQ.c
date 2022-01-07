
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int IRQ_HANDLED ;
 unsigned int NO_IRQ_IGNORE ;
 int handle_one_irq (unsigned int) ;
 unsigned int irq_demux (int ) ;
 int irq_enter () ;
 int irq_exit () ;
 int irq_finish (unsigned int) ;
 int irq_lookup (unsigned int) ;
 struct pt_regs* set_irq_regs (struct pt_regs*) ;

int do_IRQ(unsigned int irq, struct pt_regs *regs)
{
 struct pt_regs *old_regs = set_irq_regs(regs);

 irq_enter();

 irq = irq_demux(irq_lookup(irq));

 if (irq != NO_IRQ_IGNORE) {
  handle_one_irq(irq);
  irq_finish(irq);
 }

 irq_exit();

 set_irq_regs(old_regs);

 return IRQ_HANDLED;
}
