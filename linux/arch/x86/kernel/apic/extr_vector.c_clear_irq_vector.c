
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;
struct apic_chip_data {unsigned int vector; unsigned int prev_vector; int clist; scalar_t__ move_in_progress; int prev_cpu; int cpu; } ;


 int VECTOR_SHUTDOWN ;
 struct apic_chip_data* apic_chip_data (struct irq_data*) ;
 int hlist_del_init (int *) ;
 int irq_matrix_free (int ,int ,unsigned int,int) ;
 int irqd_affinity_is_managed (struct irq_data*) ;
 int lockdep_assert_held (int *) ;
 int * per_cpu (int ,int ) ;
 int trace_vector_clear (int ,unsigned int,int ,unsigned int,int ) ;
 int vector_irq ;
 int vector_lock ;
 int vector_matrix ;

__attribute__((used)) static void clear_irq_vector(struct irq_data *irqd)
{
 struct apic_chip_data *apicd = apic_chip_data(irqd);
 bool managed = irqd_affinity_is_managed(irqd);
 unsigned int vector = apicd->vector;

 lockdep_assert_held(&vector_lock);

 if (!vector)
  return;

 trace_vector_clear(irqd->irq, vector, apicd->cpu, apicd->prev_vector,
      apicd->prev_cpu);

 per_cpu(vector_irq, apicd->cpu)[vector] = VECTOR_SHUTDOWN;
 irq_matrix_free(vector_matrix, apicd->cpu, vector, managed);
 apicd->vector = 0;


 vector = apicd->prev_vector;
 if (!vector)
  return;

 per_cpu(vector_irq, apicd->prev_cpu)[vector] = VECTOR_SHUTDOWN;
 irq_matrix_free(vector_matrix, apicd->prev_cpu, vector, managed);
 apicd->prev_vector = 0;
 apicd->move_in_progress = 0;
 hlist_del_init(&apicd->clist);
}
