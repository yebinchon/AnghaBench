
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;
struct cpumask {int dummy; } ;
struct apic_chip_data {int is_managed; } ;


 struct apic_chip_data* apic_chip_data (struct irq_data*) ;
 struct cpumask* irq_data_get_affinity_mask (struct irq_data*) ;
 int irq_matrix_reserve_managed (int ,struct cpumask const*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int trace_vector_reserve_managed (int ,int) ;
 int vector_lock ;
 int vector_matrix ;

__attribute__((used)) static int reserve_managed_vector(struct irq_data *irqd)
{
 const struct cpumask *affmsk = irq_data_get_affinity_mask(irqd);
 struct apic_chip_data *apicd = apic_chip_data(irqd);
 unsigned long flags;
 int ret;

 raw_spin_lock_irqsave(&vector_lock, flags);
 apicd->is_managed = 1;
 ret = irq_matrix_reserve_managed(vector_matrix, affmsk);
 raw_spin_unlock_irqrestore(&vector_lock, flags);
 trace_vector_reserve_managed(irqd->irq, ret);
 return ret;
}
