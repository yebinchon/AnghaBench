
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int hw; } ;


 int csky_perf_event_update (struct perf_event*,int *) ;

__attribute__((used)) static void csky_pmu_read(struct perf_event *event)
{
 csky_perf_event_update(event, &event->hw);
}
