
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuidle_coupled {int online_count; int ready_waiting_counts; } ;


 int WAITING_MASK ;
 int atomic_read (int *) ;

__attribute__((used)) static inline bool cpuidle_coupled_cpus_waiting(struct cpuidle_coupled *coupled)
{
 int w = atomic_read(&coupled->ready_waiting_counts) & WAITING_MASK;
 return w == coupled->online_count;
}
