
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nr_regs; unsigned int irq; scalar_t__ base_irq; int ** priority_mask; int ** saved_mask; } ;


 int irq_free_descs (scalar_t__,int) ;
 int irq_remove_generic_chip (int *,int,int ,int ) ;
 int irq_set_chained_handler (unsigned int,int *) ;
 int kfree (int **) ;
 int pr_err (char*) ;
 int ** prcm_irq_chips ;
 TYPE_1__* prcm_irq_setup ;

void omap_prcm_irq_cleanup(void)
{
 unsigned int irq;
 int i;

 if (!prcm_irq_setup) {
  pr_err("PRCM: IRQ handler not initialized; cannot cleanup\n");
  return;
 }

 if (prcm_irq_chips) {
  for (i = 0; i < prcm_irq_setup->nr_regs; i++) {
   if (prcm_irq_chips[i])
    irq_remove_generic_chip(prcm_irq_chips[i],
     0xffffffff, 0, 0);
   prcm_irq_chips[i] = ((void*)0);
  }
  kfree(prcm_irq_chips);
  prcm_irq_chips = ((void*)0);
 }

 kfree(prcm_irq_setup->saved_mask);
 prcm_irq_setup->saved_mask = ((void*)0);

 kfree(prcm_irq_setup->priority_mask);
 prcm_irq_setup->priority_mask = ((void*)0);

 irq = prcm_irq_setup->irq;
 irq_set_chained_handler(irq, ((void*)0));

 if (prcm_irq_setup->base_irq > 0)
  irq_free_descs(prcm_irq_setup->base_irq,
   prcm_irq_setup->nr_regs * 32);
 prcm_irq_setup->base_irq = 0;
}
