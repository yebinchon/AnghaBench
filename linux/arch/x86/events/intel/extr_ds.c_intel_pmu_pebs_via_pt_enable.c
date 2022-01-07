
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_perf_event {int flags; size_t idx; } ;
struct perf_event {struct hw_perf_event hw; } ;
struct debug_store {int * pebs_event_reset; } ;
struct cpu_hw_events {int pebs_enabled; struct debug_store* ds; } ;


 scalar_t__ MSR_RELOAD_PMC0 ;
 int PEBS_OUTPUT_PT ;
 int PEBS_PMI_AFTER_EACH_RECORD ;
 int PERF_X86_EVENT_LARGE_PEBS ;
 int cpu_hw_events ;
 int is_pebs_pt (struct perf_event*) ;
 struct cpu_hw_events* this_cpu_ptr (int *) ;
 int wrmsrl (scalar_t__,int ) ;

__attribute__((used)) static void intel_pmu_pebs_via_pt_enable(struct perf_event *event)
{
 struct cpu_hw_events *cpuc = this_cpu_ptr(&cpu_hw_events);
 struct hw_perf_event *hwc = &event->hw;
 struct debug_store *ds = cpuc->ds;

 if (!is_pebs_pt(event))
  return;

 if (!(event->hw.flags & PERF_X86_EVENT_LARGE_PEBS))
  cpuc->pebs_enabled |= PEBS_PMI_AFTER_EACH_RECORD;

 cpuc->pebs_enabled |= PEBS_OUTPUT_PT;

 wrmsrl(MSR_RELOAD_PMC0 + hwc->idx, ds->pebs_event_reset[hwc->idx]);
}
