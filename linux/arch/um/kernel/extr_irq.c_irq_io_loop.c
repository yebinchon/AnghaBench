
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uml_pt_regs {int dummy; } ;
struct irq_fd {int active; int pending; int purge; int irq; } ;


 int do_IRQ (int ,struct uml_pt_regs*) ;

__attribute__((used)) static void irq_io_loop(struct irq_fd *irq, struct uml_pt_regs *regs)
{






 if (irq->active) {
  irq->active = 0;
  do {
   irq->pending = 0;
   do_IRQ(irq->irq, regs);
  } while (irq->pending && (!irq->purge));
  if (!irq->purge)
   irq->active = 1;
 } else {
  irq->pending = 1;
 }
}
