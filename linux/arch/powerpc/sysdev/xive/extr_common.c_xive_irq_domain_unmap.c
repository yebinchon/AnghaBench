
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int dummy; } ;
struct irq_data {int dummy; } ;


 struct irq_data* irq_get_irq_data (unsigned int) ;
 scalar_t__ irqd_to_hwirq (struct irq_data*) ;
 int xive_irq_free_data (unsigned int) ;

__attribute__((used)) static void xive_irq_domain_unmap(struct irq_domain *d, unsigned int virq)
{
 struct irq_data *data = irq_get_irq_data(virq);
 unsigned int hw_irq;


 if (!data)
  return;
 hw_irq = (unsigned int)irqd_to_hwirq(data);
 if (hw_irq)
  xive_irq_free_data(virq);
}
