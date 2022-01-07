
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpu_hw_events {int active_mask; } ;
struct TYPE_2__ {int num_counters; } ;


 int amd_pmu_wait_on_overflow (int) ;
 int cpu_hw_events ;
 scalar_t__ in_nmi () ;
 int test_bit (int,int ) ;
 struct cpu_hw_events* this_cpu_ptr (int *) ;
 TYPE_1__ x86_pmu ;
 int x86_pmu_disable_all () ;

__attribute__((used)) static void amd_pmu_disable_all(void)
{
 struct cpu_hw_events *cpuc = this_cpu_ptr(&cpu_hw_events);
 int idx;

 x86_pmu_disable_all();






 if (in_nmi())
  return;







 for (idx = 0; idx < x86_pmu.num_counters; idx++) {
  if (!test_bit(idx, cpuc->active_mask))
   continue;

  amd_pmu_wait_on_overflow(idx);
 }
}
