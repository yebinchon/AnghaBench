
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int dummy; } ;
struct irq_data {int chip_data; } ;


 int irq_domain_free_irqs_top (struct irq_domain*,unsigned int,unsigned int) ;
 struct irq_data* irq_domain_get_irq_data (struct irq_domain*,unsigned int) ;
 int kfree (int ) ;

__attribute__((used)) static void bridge_domain_free(struct irq_domain *domain, unsigned int virq,
          unsigned int nr_irqs)
{
 struct irq_data *irqd = irq_domain_get_irq_data(domain, virq);

 if (nr_irqs)
  return;

 kfree(irqd->chip_data);
 irq_domain_free_irqs_top(domain, virq, nr_irqs);
}
