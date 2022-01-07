
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct hw_perf_event {int idx; int prev_count; } ;
struct perf_event {int count; struct hw_perf_event hw; } ;
struct TYPE_2__ {unsigned long long counter_width; } ;


 int local64_add (scalar_t__,int *) ;
 scalar_t__ local64_cmpxchg (int *,scalar_t__,scalar_t__) ;
 scalar_t__ local64_read (int *) ;
 scalar_t__ read_counter (int) ;
 TYPE_1__* riscv_pmu ;

__attribute__((used)) static void riscv_pmu_read(struct perf_event *event)
{
 struct hw_perf_event *hwc = &event->hw;
 u64 prev_raw_count, new_raw_count;
 u64 oldval;
 int idx = hwc->idx;
 u64 delta;

 do {
  prev_raw_count = local64_read(&hwc->prev_count);
  new_raw_count = read_counter(idx);

  oldval = local64_cmpxchg(&hwc->prev_count, prev_raw_count,
      new_raw_count);
 } while (oldval != prev_raw_count);




 delta = (new_raw_count - prev_raw_count) &
  ((1ULL << riscv_pmu->counter_width) - 1);
 local64_add(delta, &event->count);




}
