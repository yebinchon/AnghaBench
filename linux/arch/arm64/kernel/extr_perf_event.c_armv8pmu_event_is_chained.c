
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int idx; } ;
struct perf_event {TYPE_1__ hw; } ;


 int ARMV8_IDX_CYCLE_COUNTER ;
 int WARN_ON (int) ;
 scalar_t__ armv8pmu_event_is_64bit (struct perf_event*) ;

__attribute__((used)) static inline bool armv8pmu_event_is_chained(struct perf_event *event)
{
 int idx = event->hw.idx;

 return !WARN_ON(idx < 0) &&
        armv8pmu_event_is_64bit(event) &&
        (idx != ARMV8_IDX_CYCLE_COUNTER);
}
