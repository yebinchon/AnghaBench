
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct hw_perf_event {int idx; int prev_count; } ;
struct perf_event {int count; struct hw_perf_event hw; } ;


 scalar_t__ GENMASK_ULL (int,int ) ;
 scalar_t__ l2x0_pmu_counter_read (int ) ;
 int local64_add (scalar_t__,int *) ;
 scalar_t__ local64_read (int *) ;
 scalar_t__ local64_xchg (int *,scalar_t__) ;
 int warn_if_saturated (scalar_t__) ;

__attribute__((used)) static void l2x0_pmu_event_read(struct perf_event *event)
{
 struct hw_perf_event *hw = &event->hw;
 u64 prev_count, new_count, mask;

 do {
   prev_count = local64_read(&hw->prev_count);
   new_count = l2x0_pmu_counter_read(hw->idx);
 } while (local64_xchg(&hw->prev_count, new_count) != prev_count);

 mask = GENMASK_ULL(31, 0);
 local64_add((new_count - prev_count) & mask, &event->count);

 warn_if_saturated(new_count);
}
