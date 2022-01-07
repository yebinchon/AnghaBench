
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuidle_coupled {int* requested_state; int ready_waiting_counts; } ;


 int WAITING_MASK ;
 int atomic_inc_return (int *) ;

__attribute__((used)) static int cpuidle_coupled_set_waiting(int cpu,
  struct cpuidle_coupled *coupled, int next_state)
{
 coupled->requested_state[cpu] = next_state;





 return atomic_inc_return(&coupled->ready_waiting_counts) & WAITING_MASK;
}
