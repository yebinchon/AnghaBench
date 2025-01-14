
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int dummy; } ;
struct irq_data {scalar_t__ chip_data; } ;


 struct irq_data* irq_domain_get_irq_data (struct irq_domain*,unsigned int) ;
 int kfree (scalar_t__) ;

__attribute__((used)) static void hub_domain_free(struct irq_domain *domain,
       unsigned int virq, unsigned int nr_irqs)
{
 struct irq_data *irqd;

 if (nr_irqs > 1)
  return;

 irqd = irq_domain_get_irq_data(domain, virq);
 if (irqd && irqd->chip_data)
  kfree(irqd->chip_data);
}
