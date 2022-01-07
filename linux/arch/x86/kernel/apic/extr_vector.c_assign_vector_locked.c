
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;
struct cpumask {int dummy; } ;
struct apic_chip_data {int has_reserved; unsigned int cpu; int vector; int clist; scalar_t__ move_in_progress; } ;


 int EBUSY ;
 struct apic_chip_data* apic_chip_data (struct irq_data*) ;
 int apic_update_irq_cfg (struct irq_data*,int,unsigned int) ;
 int apic_update_vector (struct irq_data*,int,unsigned int) ;
 scalar_t__ cpu_online (unsigned int) ;
 scalar_t__ cpumask_test_cpu (unsigned int,struct cpumask const*) ;
 int hlist_unhashed (int *) ;
 int irq_matrix_alloc (int ,struct cpumask const*,int,unsigned int*) ;
 int lockdep_assert_held (int *) ;
 int trace_vector_alloc (int ,int,int,int) ;
 int vector_lock ;
 int vector_matrix ;

__attribute__((used)) static int
assign_vector_locked(struct irq_data *irqd, const struct cpumask *dest)
{
 struct apic_chip_data *apicd = apic_chip_data(irqd);
 bool resvd = apicd->has_reserved;
 unsigned int cpu = apicd->cpu;
 int vector = apicd->vector;

 lockdep_assert_held(&vector_lock);






 if (vector && cpu_online(cpu) && cpumask_test_cpu(cpu, dest))
  return 0;







 if (apicd->move_in_progress || !hlist_unhashed(&apicd->clist))
  return -EBUSY;

 vector = irq_matrix_alloc(vector_matrix, dest, resvd, &cpu);
 trace_vector_alloc(irqd->irq, vector, resvd, vector);
 if (vector < 0)
  return vector;
 apic_update_vector(irqd, vector, cpu);
 apic_update_irq_cfg(irqd, vector, cpu);

 return 0;
}
