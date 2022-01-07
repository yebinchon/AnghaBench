
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;
struct irq_bucket {int irq; struct irq_bucket* next; } ;


 unsigned int SUN4D_IPI_IRQ ;
 int cc_get_ipen () ;
 int cc_set_iclr (int) ;
 int generic_handle_irq (int ) ;
 int irq_enter () ;
 int irq_exit () ;
 struct irq_bucket** irq_map ;
 int* pil_to_sbus ;
 struct pt_regs* set_irq_regs (struct pt_regs*) ;
 int sun4d_ipi_interrupt () ;
 int sun4d_sbus_handler_irq (int) ;

void sun4d_handler_irq(unsigned int pil, struct pt_regs *regs)
{
 struct pt_regs *old_regs;

 int sbusl = pil_to_sbus[pil];


 cc_get_ipen();

 cc_set_iclr(1 << pil);
 old_regs = set_irq_regs(regs);
 irq_enter();
 if (sbusl == 0) {

  struct irq_bucket *p;

  p = irq_map[pil];
  while (p) {
   struct irq_bucket *next;

   next = p->next;
   generic_handle_irq(p->irq);
   p = next;
  }
 } else {

  sun4d_sbus_handler_irq(sbusl);
 }
 irq_exit();
 set_irq_regs(old_regs);
}
