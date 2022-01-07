
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int idx; } ;
struct perf_event {TYPE_1__ hw; } ;


 scalar_t__ armv8pmu_event_is_chained (struct perf_event*) ;
 int armv8pmu_read_evcntr (int) ;

__attribute__((used)) static inline u64 armv8pmu_read_hw_counter(struct perf_event *event)
{
 int idx = event->hw.idx;
 u64 val = 0;

 val = armv8pmu_read_evcntr(idx);
 if (armv8pmu_event_is_chained(event))
  val = (val << 32) | armv8pmu_read_evcntr(idx - 1);
 return val;
}
