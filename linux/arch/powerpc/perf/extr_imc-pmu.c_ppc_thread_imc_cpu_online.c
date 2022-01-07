
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int thread_imc_mem_alloc (unsigned int,int ) ;
 int thread_imc_mem_size ;

__attribute__((used)) static int ppc_thread_imc_cpu_online(unsigned int cpu)
{
 return thread_imc_mem_alloc(cpu, thread_imc_mem_size);
}
