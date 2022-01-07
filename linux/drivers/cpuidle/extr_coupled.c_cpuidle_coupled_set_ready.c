
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuidle_coupled {int ready_waiting_counts; } ;


 int MAX_WAITING_CPUS ;
 int atomic_add (int ,int *) ;

__attribute__((used)) static inline void cpuidle_coupled_set_ready(struct cpuidle_coupled *coupled)
{
 atomic_add(MAX_WAITING_CPUS, &coupled->ready_waiting_counts);
}
