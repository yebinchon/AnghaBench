
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int dummy; } ;


 int __pmu_event_start (struct perf_event*) ;

__attribute__((used)) static void pmu_event_start(struct perf_event *event, int mode)
{
 __pmu_event_start(event);
}
