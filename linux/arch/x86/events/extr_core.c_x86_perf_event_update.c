
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct hw_perf_event {int idx; int period_left; int prev_count; int event_base_rdpmc; } ;
struct perf_event {int count; struct hw_perf_event hw; } ;
struct TYPE_2__ {int cntval_bits; } ;


 int INTEL_PMC_IDX_FIXED_BTS ;
 int local64_add (int,int *) ;
 int local64_cmpxchg (int *,int,int) ;
 int local64_read (int *) ;
 int local64_sub (int,int *) ;
 int rdpmcl (int ,int) ;
 TYPE_1__ x86_pmu ;

u64 x86_perf_event_update(struct perf_event *event)
{
 struct hw_perf_event *hwc = &event->hw;
 int shift = 64 - x86_pmu.cntval_bits;
 u64 prev_raw_count, new_raw_count;
 int idx = hwc->idx;
 u64 delta;

 if (idx == INTEL_PMC_IDX_FIXED_BTS)
  return 0;
again:
 prev_raw_count = local64_read(&hwc->prev_count);
 rdpmcl(hwc->event_base_rdpmc, new_raw_count);

 if (local64_cmpxchg(&hwc->prev_count, prev_raw_count,
     new_raw_count) != prev_raw_count)
  goto again;
 delta = (new_raw_count << shift) - (prev_raw_count << shift);
 delta >>= shift;

 local64_add(delta, &event->count);
 local64_sub(delta, &hwc->period_left);

 return new_raw_count;
}
