
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct hw_perf_event {int prev_count; } ;
struct perf_event {int count; struct hw_perf_event hw; } ;


 scalar_t__ cstate_pmu_read_counter (struct perf_event*) ;
 int local64_add (scalar_t__,int *) ;
 scalar_t__ local64_cmpxchg (int *,scalar_t__,scalar_t__) ;
 scalar_t__ local64_read (int *) ;

__attribute__((used)) static void cstate_pmu_event_update(struct perf_event *event)
{
 struct hw_perf_event *hwc = &event->hw;
 u64 prev_raw_count, new_raw_count;

again:
 prev_raw_count = local64_read(&hwc->prev_count);
 new_raw_count = cstate_pmu_read_counter(event);

 if (local64_cmpxchg(&hwc->prev_count, prev_raw_count,
       new_raw_count) != prev_raw_count)
  goto again;

 local64_add(new_raw_count - prev_raw_count, &event->count);
}
