
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hardirq_stack_ptr ;
 int map_irq_stack (unsigned int) ;
 scalar_t__ per_cpu (int ,unsigned int) ;

int irq_init_percpu_irqstack(unsigned int cpu)
{
 if (per_cpu(hardirq_stack_ptr, cpu))
  return 0;
 return map_irq_stack(cpu);
}
