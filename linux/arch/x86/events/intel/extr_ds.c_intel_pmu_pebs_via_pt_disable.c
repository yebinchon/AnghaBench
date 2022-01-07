
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int dummy; } ;
struct cpu_hw_events {int pebs_enabled; } ;


 int PEBS_VIA_PT_MASK ;
 int cpu_hw_events ;
 int is_pebs_pt (struct perf_event*) ;
 struct cpu_hw_events* this_cpu_ptr (int *) ;

__attribute__((used)) static void intel_pmu_pebs_via_pt_disable(struct perf_event *event)
{
 struct cpu_hw_events *cpuc = this_cpu_ptr(&cpu_hw_events);

 if (!is_pebs_pt(event))
  return;

 if (!(cpuc->pebs_enabled & ~PEBS_VIA_PT_MASK))
  cpuc->pebs_enabled &= ~PEBS_VIA_PT_MASK;
}
