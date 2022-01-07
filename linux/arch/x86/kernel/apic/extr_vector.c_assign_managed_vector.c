
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;
struct cpumask {int dummy; } ;
struct apic_chip_data {int cpu; scalar_t__ vector; } ;


 struct apic_chip_data* apic_chip_data (struct irq_data*) ;
 int apic_update_irq_cfg (struct irq_data*,int,int) ;
 int apic_update_vector (struct irq_data*,int,int) ;
 int cpumask_and (int ,struct cpumask const*,struct cpumask const*) ;
 scalar_t__ cpumask_test_cpu (int ,int ) ;
 struct cpumask* irq_data_get_affinity_mask (struct irq_data*) ;
 int irq_matrix_alloc_managed (int ,int ,int*) ;
 int trace_vector_alloc_managed (int ,int,int) ;
 int vector_matrix ;
 int vector_searchmask ;

__attribute__((used)) static int
assign_managed_vector(struct irq_data *irqd, const struct cpumask *dest)
{
 const struct cpumask *affmsk = irq_data_get_affinity_mask(irqd);
 struct apic_chip_data *apicd = apic_chip_data(irqd);
 int vector, cpu;

 cpumask_and(vector_searchmask, dest, affmsk);


 if (apicd->vector && cpumask_test_cpu(apicd->cpu, vector_searchmask))
  return 0;
 vector = irq_matrix_alloc_managed(vector_matrix, vector_searchmask,
       &cpu);
 trace_vector_alloc_managed(irqd->irq, vector, vector);
 if (vector < 0)
  return vector;
 apic_update_vector(irqd, vector, cpu);
 apic_update_irq_cfg(irqd, vector, cpu);
 return 0;
}
