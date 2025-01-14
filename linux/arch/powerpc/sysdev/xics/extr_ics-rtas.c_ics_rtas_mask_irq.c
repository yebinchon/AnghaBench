
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;


 unsigned int XICS_IPI ;
 unsigned int XICS_IRQ_SPURIOUS ;
 int ics_rtas_mask_real_irq (unsigned int) ;
 scalar_t__ irqd_to_hwirq (struct irq_data*) ;
 int pr_devel (char*,int ,unsigned int) ;

__attribute__((used)) static void ics_rtas_mask_irq(struct irq_data *d)
{
 unsigned int hw_irq = (unsigned int)irqd_to_hwirq(d);

 pr_devel("xics: mask virq %d [hw 0x%x]\n", d->irq, hw_irq);

 if (hw_irq == XICS_IPI || hw_irq == XICS_IRQ_SPURIOUS)
  return;
 ics_rtas_mask_real_irq(hw_irq);
}
