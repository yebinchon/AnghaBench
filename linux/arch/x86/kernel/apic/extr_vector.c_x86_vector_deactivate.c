
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int dummy; } ;
struct irq_data {int irq; } ;
struct apic_chip_data {scalar_t__ can_reserve; scalar_t__ has_reserved; int is_managed; } ;


 struct apic_chip_data* apic_chip_data (struct irq_data*) ;
 int clear_irq_vector (struct irq_data*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int reserve_irq_vector_locked (struct irq_data*) ;
 int trace_vector_deactivate (int ,int ,scalar_t__,int) ;
 int vector_assign_managed_shutdown (struct irq_data*) ;
 int vector_lock ;

__attribute__((used)) static void x86_vector_deactivate(struct irq_domain *dom, struct irq_data *irqd)
{
 struct apic_chip_data *apicd = apic_chip_data(irqd);
 unsigned long flags;

 trace_vector_deactivate(irqd->irq, apicd->is_managed,
    apicd->can_reserve, 0);


 if (!apicd->is_managed && !apicd->can_reserve)
  return;

 if (apicd->has_reserved)
  return;

 raw_spin_lock_irqsave(&vector_lock, flags);
 clear_irq_vector(irqd);
 if (apicd->can_reserve)
  reserve_irq_vector_locked(irqd);
 else
  vector_assign_managed_shutdown(irqd);
 raw_spin_unlock_irqrestore(&vector_lock, flags);
}
