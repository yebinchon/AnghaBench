
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuidle_coupled {int coupled_cpus; } ;
typedef int cpumask_t ;


 int * cpu_online_mask ;
 int cpuidle_coupled_poke_pending ;
 int cpumask_and (int *,int *,int *) ;

__attribute__((used)) static bool cpuidle_coupled_any_pokes_pending(struct cpuidle_coupled *coupled)
{
 cpumask_t cpus;
 int ret;

 cpumask_and(&cpus, cpu_online_mask, &coupled->coupled_cpus);
 ret = cpumask_and(&cpus, &cpuidle_coupled_poke_pending, &cpus);

 return ret;
}
