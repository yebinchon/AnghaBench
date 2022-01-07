
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int dummy; } ;
struct irq_data {int irq; } ;
struct apic_chip_data {unsigned int vector; unsigned int cpu; unsigned int prev_vector; int move_in_progress; unsigned int prev_cpu; } ;


 int BUG_ON (int) ;
 int IS_ERR_OR_NULL (struct irq_desc*) ;
 unsigned int MANAGED_IRQ_SHUTDOWN_VECTOR ;
 struct apic_chip_data* apic_chip_data (struct irq_data*) ;
 scalar_t__ cpu_online (unsigned int) ;
 struct irq_desc* irq_data_to_desc (struct irq_data*) ;
 int irq_matrix_free (int ,unsigned int,unsigned int,int) ;
 int irqd_affinity_is_managed (struct irq_data*) ;
 int lockdep_assert_held (int *) ;
 struct irq_desc** per_cpu (int ,unsigned int) ;
 int trace_vector_update (int ,unsigned int,unsigned int,unsigned int,unsigned int) ;
 int vector_irq ;
 int vector_lock ;
 int vector_matrix ;

__attribute__((used)) static void apic_update_vector(struct irq_data *irqd, unsigned int newvec,
          unsigned int newcpu)
{
 struct apic_chip_data *apicd = apic_chip_data(irqd);
 struct irq_desc *desc = irq_data_to_desc(irqd);
 bool managed = irqd_affinity_is_managed(irqd);

 lockdep_assert_held(&vector_lock);

 trace_vector_update(irqd->irq, newvec, newcpu, apicd->vector,
       apicd->cpu);







 apicd->prev_vector = 0;
 if (!apicd->vector || apicd->vector == MANAGED_IRQ_SHUTDOWN_VECTOR)
  goto setnew;
 if (cpu_online(apicd->cpu)) {
  apicd->move_in_progress = 1;
  apicd->prev_vector = apicd->vector;
  apicd->prev_cpu = apicd->cpu;
 } else {
  irq_matrix_free(vector_matrix, apicd->cpu, apicd->vector,
    managed);
 }

setnew:
 apicd->vector = newvec;
 apicd->cpu = newcpu;
 BUG_ON(!IS_ERR_OR_NULL(per_cpu(vector_irq, newcpu)[newvec]));
 per_cpu(vector_irq, newcpu)[newvec] = desc;
}
