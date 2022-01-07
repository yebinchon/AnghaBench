
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpumask {int dummy; } ;


 struct cpumask CPU_MASK_NONE ;
 int __send_ipi_mask (struct cpumask*,int) ;
 int cpumask_set_cpu (int,struct cpumask*) ;

__attribute__((used)) static bool __send_ipi_one(int cpu, int vector)
{
 struct cpumask mask = CPU_MASK_NONE;

 cpumask_set_cpu(cpu, &mask);
 return __send_ipi_mask(&mask, vector);
}
