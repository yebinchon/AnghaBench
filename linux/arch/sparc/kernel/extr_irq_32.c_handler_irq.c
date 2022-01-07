
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;
struct irq_bucket {int irq; struct irq_bucket* next; } ;


 int BUG_ON (int) ;
 int generic_handle_irq (int ) ;
 int irq_enter () ;
 int irq_exit () ;
 struct irq_bucket** irq_map ;
 struct pt_regs* set_irq_regs (struct pt_regs*) ;

void handler_irq(unsigned int pil, struct pt_regs *regs)
{
 struct pt_regs *old_regs;
 struct irq_bucket *p;

 BUG_ON(pil > 15);
 old_regs = set_irq_regs(regs);
 irq_enter();

 p = irq_map[pil];
 while (p) {
  struct irq_bucket *next = p->next;

  generic_handle_irq(p->irq);
  p = next;
 }
 irq_exit();
 set_irq_regs(old_regs);
}
