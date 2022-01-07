
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int idx; } ;
struct perf_event {TYPE_1__ hw; } ;


 int arc_perf_event_update (struct perf_event*,TYPE_1__*,int ) ;

__attribute__((used)) static void arc_pmu_read(struct perf_event *event)
{
 arc_perf_event_update(event, &event->hw, event->hw.idx);
}
