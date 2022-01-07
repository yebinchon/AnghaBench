
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int trace_imc_mem_alloc (unsigned int,int ) ;
 int trace_imc_mem_size ;

__attribute__((used)) static int ppc_trace_imc_cpu_online(unsigned int cpu)
{
 return trace_imc_mem_alloc(cpu, trace_imc_mem_size);
}
