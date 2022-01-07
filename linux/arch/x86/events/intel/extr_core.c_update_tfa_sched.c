
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_hw_events {int active_mask; } ;


 int cpu_hw_events ;
 int perf_pmu_resched (int ) ;
 scalar_t__ test_bit (int,int ) ;
 struct cpu_hw_events* this_cpu_ptr (int *) ;
 int x86_get_pmu () ;

__attribute__((used)) static void update_tfa_sched(void *ignored)
{
 struct cpu_hw_events *cpuc = this_cpu_ptr(&cpu_hw_events);





 if (test_bit(3, cpuc->active_mask))
  perf_pmu_resched(x86_get_pmu());
}
