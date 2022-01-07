
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int NR_IPI ;
 scalar_t__ __get_irq_stat (unsigned int,int ) ;
 int * ipi_irqs ;

u64 smp_irq_stat_cpu(unsigned int cpu)
{
 u64 sum = 0;
 int i;

 for (i = 0; i < NR_IPI; i++)
  sum += __get_irq_stat(cpu, ipi_irqs[i]);

 return sum;
}
