
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int precise_ip; scalar_t__ exclude_guest; scalar_t__ exclude_host; } ;
struct hw_perf_event {unsigned long long idx; scalar_t__ config_base; int config; } ;
struct perf_event {TYPE_1__ attr; struct hw_perf_event hw; } ;
struct cpu_hw_events {unsigned long long intel_ctrl_guest_mask; unsigned long long intel_ctrl_host_mask; unsigned long long intel_cp_status; } ;
struct TYPE_5__ {int enabled; } ;


 int ARCH_PERFMON_EVENTSEL_ENABLE ;
 unsigned long long INTEL_PMC_IDX_FIXED_BTS ;
 scalar_t__ MSR_ARCH_PERFMON_FIXED_CTR_CTRL ;
 int __this_cpu_read (int ) ;
 int __x86_pmu_enable_event (struct hw_perf_event*,int ) ;
 TYPE_2__ cpu_hw_events ;
 int event_is_checkpointed (struct perf_event*) ;
 int intel_pmu_enable_bts (int ) ;
 int intel_pmu_enable_fixed (struct perf_event*) ;
 int intel_pmu_pebs_enable (struct perf_event*) ;
 struct cpu_hw_events* this_cpu_ptr (TYPE_2__*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void intel_pmu_enable_event(struct perf_event *event)
{
 struct hw_perf_event *hwc = &event->hw;
 struct cpu_hw_events *cpuc = this_cpu_ptr(&cpu_hw_events);

 if (unlikely(hwc->idx == INTEL_PMC_IDX_FIXED_BTS)) {
  if (!__this_cpu_read(cpu_hw_events.enabled))
   return;

  intel_pmu_enable_bts(hwc->config);
  return;
 }

 if (event->attr.exclude_host)
  cpuc->intel_ctrl_guest_mask |= (1ull << hwc->idx);
 if (event->attr.exclude_guest)
  cpuc->intel_ctrl_host_mask |= (1ull << hwc->idx);

 if (unlikely(event_is_checkpointed(event)))
  cpuc->intel_cp_status |= (1ull << hwc->idx);

 if (unlikely(event->attr.precise_ip))
  intel_pmu_pebs_enable(event);

 if (unlikely(hwc->config_base == MSR_ARCH_PERFMON_FIXED_CTR_CTRL)) {
  intel_pmu_enable_fixed(event);
  return;
 }

 __x86_pmu_enable_event(hwc, ARCH_PERFMON_EVENTSEL_ENABLE);
}
