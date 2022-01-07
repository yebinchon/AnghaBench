
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int complete (int ) ;
 int cpu_completion ;
 int per_cpu (int ,unsigned int) ;

__attribute__((used)) static void ipi_complete(unsigned int cpu)
{
 complete(per_cpu(cpu_completion, cpu));
}
