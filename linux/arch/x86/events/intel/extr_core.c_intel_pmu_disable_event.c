
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int precise_ip; } ;
struct hw_perf_event {unsigned long long idx; scalar_t__ config_base; } ;
struct perf_event {TYPE_1__ attr; struct hw_perf_event hw; } ;
struct cpu_hw_events {unsigned long long intel_ctrl_guest_mask; unsigned long long intel_ctrl_host_mask; unsigned long long intel_cp_status; } ;


 unsigned long long INTEL_PMC_IDX_FIXED_BTS ;
 scalar_t__ MSR_ARCH_PERFMON_FIXED_CTR_CTRL ;
 int cpu_hw_events ;
 int intel_pmu_disable_bts () ;
 int intel_pmu_disable_fixed (struct hw_perf_event*) ;
 int intel_pmu_drain_bts_buffer () ;
 int intel_pmu_pebs_disable (struct perf_event*) ;
 struct cpu_hw_events* this_cpu_ptr (int *) ;
 scalar_t__ unlikely (int) ;
 int x86_pmu_disable_event (struct perf_event*) ;

__attribute__((used)) static void intel_pmu_disable_event(struct perf_event *event)
{
 struct hw_perf_event *hwc = &event->hw;
 struct cpu_hw_events *cpuc = this_cpu_ptr(&cpu_hw_events);

 if (unlikely(hwc->idx == INTEL_PMC_IDX_FIXED_BTS)) {
  intel_pmu_disable_bts();
  intel_pmu_drain_bts_buffer();
  return;
 }

 cpuc->intel_ctrl_guest_mask &= ~(1ull << hwc->idx);
 cpuc->intel_ctrl_host_mask &= ~(1ull << hwc->idx);
 cpuc->intel_cp_status &= ~(1ull << hwc->idx);

 if (unlikely(hwc->config_base == MSR_ARCH_PERFMON_FIXED_CTR_CTRL))
  intel_pmu_disable_fixed(hwc);
 else
  x86_pmu_disable_event(event);





 if (unlikely(event->attr.precise_ip))
  intel_pmu_pebs_disable(event);
}
