
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_2__ {int idx; } ;
struct perf_event {int count; TYPE_1__ hw; } ;
struct hw_perf_event {int period_left; int prev_count; } ;
typedef scalar_t__ int64_t ;


 scalar_t__ XTENSA_PMU_COUNTER_MASK ;
 int local64_add (scalar_t__,int *) ;
 scalar_t__ local64_cmpxchg (int *,scalar_t__,scalar_t__) ;
 scalar_t__ local64_read (int *) ;
 int local64_sub (scalar_t__,int *) ;
 scalar_t__ xtensa_pmu_read_counter (int ) ;

__attribute__((used)) static void xtensa_perf_event_update(struct perf_event *event,
         struct hw_perf_event *hwc, int idx)
{
 uint64_t prev_raw_count, new_raw_count;
 int64_t delta;

 do {
  prev_raw_count = local64_read(&hwc->prev_count);
  new_raw_count = xtensa_pmu_read_counter(event->hw.idx);
 } while (local64_cmpxchg(&hwc->prev_count, prev_raw_count,
     new_raw_count) != prev_raw_count);

 delta = (new_raw_count - prev_raw_count) & XTENSA_PMU_COUNTER_MASK;

 local64_add(delta, &event->count);
 local64_sub(delta, &hwc->period_left);
}
