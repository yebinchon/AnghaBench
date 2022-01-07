
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct perf_event {int count; } ;
struct hw_perf_event {int period_left; int prev_count; } ;
typedef scalar_t__ s64 ;


 scalar_t__ arc_pmu_read_counter (int) ;
 int local64_add (scalar_t__,int *) ;
 scalar_t__ local64_read (int *) ;
 int local64_set (int *,scalar_t__) ;
 int local64_sub (scalar_t__,int *) ;

__attribute__((used)) static void arc_perf_event_update(struct perf_event *event,
      struct hw_perf_event *hwc, int idx)
{
 u64 prev_raw_count = local64_read(&hwc->prev_count);
 u64 new_raw_count = arc_pmu_read_counter(idx);
 s64 delta = new_raw_count - prev_raw_count;





 local64_set(&hwc->prev_count, new_raw_count);
 local64_add(delta, &event->count);
 local64_sub(delta, &hwc->period_left);
}
