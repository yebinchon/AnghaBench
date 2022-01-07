
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_fwspec {int param_count; scalar_t__* param; int fwnode; } ;
struct irq_domain {TYPE_1__* parent; } ;
typedef scalar_t__ irq_hw_number_t ;
struct TYPE_2__ {int fwnode; } ;


 int EINVAL ;
 int exynos_pmu_chip ;
 int irq_domain_alloc_irqs_parent (struct irq_domain*,unsigned int,unsigned int,struct irq_fwspec*) ;
 int irq_domain_set_hwirq_and_chip (struct irq_domain*,unsigned int,scalar_t__,int *,int *) ;

__attribute__((used)) static int exynos_pmu_domain_alloc(struct irq_domain *domain,
       unsigned int virq,
       unsigned int nr_irqs, void *data)
{
 struct irq_fwspec *fwspec = data;
 struct irq_fwspec parent_fwspec;
 irq_hw_number_t hwirq;
 int i;

 if (fwspec->param_count != 3)
  return -EINVAL;
 if (fwspec->param[0] != 0)
  return -EINVAL;

 hwirq = fwspec->param[1];

 for (i = 0; i < nr_irqs; i++)
  irq_domain_set_hwirq_and_chip(domain, virq + i, hwirq + i,
           &exynos_pmu_chip, ((void*)0));

 parent_fwspec = *fwspec;
 parent_fwspec.fwnode = domain->parent->fwnode;
 return irq_domain_alloc_irqs_parent(domain, virq, nr_irqs,
         &parent_fwspec);
}
