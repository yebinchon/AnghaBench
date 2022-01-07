
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuidle_coupled {int online_count; int coupled_cpus; } ;
typedef int cpumask_t ;


 int cpu_online_mask ;
 int cpumask_and (int *,int ,int *) ;
 int cpumask_weight (int *) ;

__attribute__((used)) static void cpuidle_coupled_update_online_cpus(struct cpuidle_coupled *coupled)
{
 cpumask_t cpus;
 cpumask_and(&cpus, cpu_online_mask, &coupled->coupled_cpus);
 coupled->online_count = cpumask_weight(&cpus);
}
