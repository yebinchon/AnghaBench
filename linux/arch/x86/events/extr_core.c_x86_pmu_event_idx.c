
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int idx; int flags; } ;
struct perf_event {TYPE_1__ hw; } ;
struct TYPE_4__ {scalar_t__ num_counters_fixed; } ;


 int INTEL_PMC_IDX_FIXED ;
 int PERF_X86_EVENT_RDPMC_ALLOWED ;
 TYPE_2__ x86_pmu ;

__attribute__((used)) static int x86_pmu_event_idx(struct perf_event *event)
{
 int idx = event->hw.idx;

 if (!(event->hw.flags & PERF_X86_EVENT_RDPMC_ALLOWED))
  return 0;

 if (x86_pmu.num_counters_fixed && idx >= INTEL_PMC_IDX_FIXED) {
  idx -= INTEL_PMC_IDX_FIXED;
  idx |= 1 << 30;
 }

 return idx + 1;
}
