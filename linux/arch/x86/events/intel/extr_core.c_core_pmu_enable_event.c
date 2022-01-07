
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int exclude_host; } ;
struct perf_event {TYPE_1__ attr; } ;


 int x86_pmu_enable_event (struct perf_event*) ;

__attribute__((used)) static void core_pmu_enable_event(struct perf_event *event)
{
 if (!event->attr.exclude_host)
  x86_pmu_enable_event(event);
}
