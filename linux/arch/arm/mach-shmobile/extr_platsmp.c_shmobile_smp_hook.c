
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_logical_map (unsigned int) ;
 int flush_cache_all () ;
 unsigned long* shmobile_smp_arg ;
 unsigned long* shmobile_smp_fn ;
 int * shmobile_smp_mpidr ;

void shmobile_smp_hook(unsigned int cpu, unsigned long fn, unsigned long arg)
{
 shmobile_smp_fn[cpu] = 0;
 flush_cache_all();

 shmobile_smp_mpidr[cpu] = cpu_logical_map(cpu);
 shmobile_smp_fn[cpu] = fn;
 shmobile_smp_arg[cpu] = arg;
 flush_cache_all();
}
