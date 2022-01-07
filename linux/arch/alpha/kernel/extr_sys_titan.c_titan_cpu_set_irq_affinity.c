
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpumask_t ;


 scalar_t__ cpumask_test_cpu (int,int *) ;
 unsigned long* titan_cpu_irq_affinity ;

__attribute__((used)) static void
titan_cpu_set_irq_affinity(unsigned int irq, cpumask_t affinity)
{
 int cpu;

 for (cpu = 0; cpu < 4; cpu++) {
  if (cpumask_test_cpu(cpu, &affinity))
   titan_cpu_irq_affinity[cpu] |= 1UL << irq;
  else
   titan_cpu_irq_affinity[cpu] &= ~(1UL << irq);
 }

}
