
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int dummy; } ;
struct irq_data {struct apic_chip_data* chip_data; } ;
struct apic_chip_data {int dummy; } ;


 int clear_irq_vector (struct irq_data*) ;
 int free_apic_chip_data (struct apic_chip_data*) ;
 struct irq_data* irq_domain_get_irq_data (int ,unsigned int) ;
 int irq_domain_reset_irq_data (struct irq_data*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int vector_free_reserved_and_managed (struct irq_data*) ;
 int vector_lock ;
 int x86_vector_domain ;

__attribute__((used)) static void x86_vector_free_irqs(struct irq_domain *domain,
     unsigned int virq, unsigned int nr_irqs)
{
 struct apic_chip_data *apicd;
 struct irq_data *irqd;
 unsigned long flags;
 int i;

 for (i = 0; i < nr_irqs; i++) {
  irqd = irq_domain_get_irq_data(x86_vector_domain, virq + i);
  if (irqd && irqd->chip_data) {
   raw_spin_lock_irqsave(&vector_lock, flags);
   clear_irq_vector(irqd);
   vector_free_reserved_and_managed(irqd);
   apicd = irqd->chip_data;
   irq_domain_reset_irq_data(irqd);
   raw_spin_unlock_irqrestore(&vector_lock, flags);
   free_apic_chip_data(apicd);
  }
 }
}
