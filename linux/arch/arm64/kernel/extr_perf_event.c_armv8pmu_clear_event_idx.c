
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pmu_hw_events {int used_mask; } ;
struct TYPE_2__ {int idx; } ;
struct perf_event {TYPE_1__ hw; } ;


 scalar_t__ armv8pmu_event_is_chained (struct perf_event*) ;
 int clear_bit (int,int ) ;

__attribute__((used)) static void armv8pmu_clear_event_idx(struct pmu_hw_events *cpuc,
         struct perf_event *event)
{
 int idx = event->hw.idx;

 clear_bit(idx, cpuc->used_mask);
 if (armv8pmu_event_is_chained(event))
  clear_bit(idx - 1, cpuc->used_mask);
}
