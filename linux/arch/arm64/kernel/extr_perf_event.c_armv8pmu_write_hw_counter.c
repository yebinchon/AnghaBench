
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int idx; } ;
struct perf_event {TYPE_1__ hw; } ;


 scalar_t__ armv8pmu_event_is_chained (struct perf_event*) ;
 int armv8pmu_write_evcntr (int,int ) ;
 int lower_32_bits (int ) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static inline void armv8pmu_write_hw_counter(struct perf_event *event,
          u64 value)
{
 int idx = event->hw.idx;

 if (armv8pmu_event_is_chained(event)) {
  armv8pmu_write_evcntr(idx, upper_32_bits(value));
  armv8pmu_write_evcntr(idx - 1, lower_32_bits(value));
 } else {
  armv8pmu_write_evcntr(idx, value);
 }
}
