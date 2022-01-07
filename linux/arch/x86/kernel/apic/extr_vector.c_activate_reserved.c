
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;
struct apic_chip_data {int has_reserved; int can_reserve; } ;


 struct apic_chip_data* apic_chip_data (struct irq_data*) ;
 int assign_irq_vector_any_locked (struct irq_data*) ;
 int cpumask_subset (int ,int ) ;
 int irq_data_get_affinity_mask (struct irq_data*) ;
 int irq_data_get_effective_affinity_mask (struct irq_data*) ;
 int irqd_can_reserve (struct irq_data*) ;
 int pr_warn (char*,int ) ;

__attribute__((used)) static int activate_reserved(struct irq_data *irqd)
{
 struct apic_chip_data *apicd = apic_chip_data(irqd);
 int ret;

 ret = assign_irq_vector_any_locked(irqd);
 if (!ret) {
  apicd->has_reserved = 0;







  if (!irqd_can_reserve(irqd))
   apicd->can_reserve = 0;
 }





 if (!cpumask_subset(irq_data_get_effective_affinity_mask(irqd),
       irq_data_get_affinity_mask(irqd))) {
  pr_warn("irq %u: Affinity broken due to vector space exhaustion.\n",
   irqd->irq);
 }

 return ret;
}
