
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct hw_perf_event {unsigned long long idx; int flags; scalar_t__ sample_period; int config; } ;
struct perf_event {struct hw_perf_event hw; } ;
struct debug_store {int* pebs_event_reset; } ;
struct cpu_hw_events {unsigned long long pebs_enabled; scalar_t__ pebs_data_cfg; scalar_t__ active_pebs_data_cfg; struct debug_store* ds; } ;
struct TYPE_3__ {scalar_t__ pebs_baseline; } ;
struct TYPE_4__ {int version; int cntval_mask; TYPE_1__ intel_cap; } ;


 int ARCH_PERFMON_EVENTSEL_INT ;
 int ICL_EVENTSEL_ADAPTIVE ;
 unsigned int INTEL_PMC_IDX_FIXED ;
 unsigned int MAX_PEBS_EVENTS ;
 int MSR_PEBS_DATA_CFG ;
 int PERF_X86_EVENT_AUTO_RELOAD ;
 int PERF_X86_EVENT_PEBS_LDLAT ;
 int PERF_X86_EVENT_PEBS_ST ;
 int cpu_hw_events ;
 int intel_pmu_pebs_via_pt_enable (struct perf_event*) ;
 struct cpu_hw_events* this_cpu_ptr (int *) ;
 int wrmsrl (int ,scalar_t__) ;
 TYPE_2__ x86_pmu ;

void intel_pmu_pebs_enable(struct perf_event *event)
{
 struct cpu_hw_events *cpuc = this_cpu_ptr(&cpu_hw_events);
 struct hw_perf_event *hwc = &event->hw;
 struct debug_store *ds = cpuc->ds;

 hwc->config &= ~ARCH_PERFMON_EVENTSEL_INT;

 cpuc->pebs_enabled |= 1ULL << hwc->idx;

 if ((event->hw.flags & PERF_X86_EVENT_PEBS_LDLAT) && (x86_pmu.version < 5))
  cpuc->pebs_enabled |= 1ULL << (hwc->idx + 32);
 else if (event->hw.flags & PERF_X86_EVENT_PEBS_ST)
  cpuc->pebs_enabled |= 1ULL << 63;

 if (x86_pmu.intel_cap.pebs_baseline) {
  hwc->config |= ICL_EVENTSEL_ADAPTIVE;
  if (cpuc->pebs_data_cfg != cpuc->active_pebs_data_cfg) {
   wrmsrl(MSR_PEBS_DATA_CFG, cpuc->pebs_data_cfg);
   cpuc->active_pebs_data_cfg = cpuc->pebs_data_cfg;
  }
 }





 if (hwc->flags & PERF_X86_EVENT_AUTO_RELOAD) {
  unsigned int idx = hwc->idx;

  if (idx >= INTEL_PMC_IDX_FIXED)
   idx = MAX_PEBS_EVENTS + (idx - INTEL_PMC_IDX_FIXED);
  ds->pebs_event_reset[idx] =
   (u64)(-hwc->sample_period) & x86_pmu.cntval_mask;
 } else {
  ds->pebs_event_reset[hwc->idx] = 0;
 }

 intel_pmu_pebs_via_pt_enable(event);
}
