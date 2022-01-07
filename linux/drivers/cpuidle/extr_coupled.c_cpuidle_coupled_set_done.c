
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuidle_coupled {int ready_waiting_counts; } ;


 int MAX_WAITING_CPUS ;
 int atomic_sub (int ,int *) ;
 int cpuidle_coupled_set_not_waiting (int,struct cpuidle_coupled*) ;

__attribute__((used)) static void cpuidle_coupled_set_done(int cpu, struct cpuidle_coupled *coupled)
{
 cpuidle_coupled_set_not_waiting(cpu, coupled);
 atomic_sub(MAX_WAITING_CPUS, &coupled->ready_waiting_counts);
}
