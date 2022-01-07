
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuidle_coupled {int * requested_state; int ready_waiting_counts; } ;


 int CPUIDLE_COUPLED_NOT_IDLE ;
 int atomic_dec (int *) ;

__attribute__((used)) static void cpuidle_coupled_set_not_waiting(int cpu,
  struct cpuidle_coupled *coupled)
{






 atomic_dec(&coupled->ready_waiting_counts);

 coupled->requested_state[cpu] = CPUIDLE_COUPLED_NOT_IDLE;
}
