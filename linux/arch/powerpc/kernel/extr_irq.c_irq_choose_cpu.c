
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpumask {int dummy; } ;


 int hard_smp_processor_id () ;

int irq_choose_cpu(const struct cpumask *mask)
{
 return hard_smp_processor_id();
}
