
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpuidle_coupled_poke_pending ;
 int cpuidle_coupled_poked ;
 int cpumask_clear_cpu (int,int *) ;
 int cpumask_set_cpu (int,int *) ;

__attribute__((used)) static void cpuidle_coupled_handle_poke(void *info)
{
 int cpu = (unsigned long)info;
 cpumask_set_cpu(cpu, &cpuidle_coupled_poked);
 cpumask_clear_cpu(cpu, &cpuidle_coupled_poke_pending);
}
