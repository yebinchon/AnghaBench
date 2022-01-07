
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct cpu_hw_events {int active_mask; } ;
struct TYPE_2__ {int num_counters; } ;


 int ARCH_PERFMON_EVENTSEL_ENABLE ;
 int cpu_hw_events ;
 int rdmsrl (int ,int) ;
 int test_bit (int,int ) ;
 struct cpu_hw_events* this_cpu_ptr (int *) ;
 int wrmsrl (int ,int) ;
 TYPE_1__ x86_pmu ;
 int x86_pmu_config_addr (int) ;

void x86_pmu_disable_all(void)
{
 struct cpu_hw_events *cpuc = this_cpu_ptr(&cpu_hw_events);
 int idx;

 for (idx = 0; idx < x86_pmu.num_counters; idx++) {
  u64 val;

  if (!test_bit(idx, cpuc->active_mask))
   continue;
  rdmsrl(x86_pmu_config_addr(idx), val);
  if (!(val & ARCH_PERFMON_EVENTSEL_ENABLE))
   continue;
  val &= ~ARCH_PERFMON_EVENTSEL_ENABLE;
  wrmsrl(x86_pmu_config_addr(idx), val);
 }
}
