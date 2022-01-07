
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;
struct apic_chip_data {int can_reserve; int has_reserved; } ;


 struct apic_chip_data* apic_chip_data (struct irq_data*) ;
 int irq_matrix_reserve (int ) ;
 int irqd_set_can_reserve (struct irq_data*) ;
 int trace_vector_reserve (int ,int ) ;
 int vector_assign_managed_shutdown (struct irq_data*) ;
 int vector_matrix ;

__attribute__((used)) static void reserve_irq_vector_locked(struct irq_data *irqd)
{
 struct apic_chip_data *apicd = apic_chip_data(irqd);

 irq_matrix_reserve(vector_matrix);
 apicd->can_reserve = 1;
 apicd->has_reserved = 1;
 irqd_set_can_reserve(irqd);
 trace_vector_reserve(irqd->irq, 0);
 vector_assign_managed_shutdown(irqd);
}
