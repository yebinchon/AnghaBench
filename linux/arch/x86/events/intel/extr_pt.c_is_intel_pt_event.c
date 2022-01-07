
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_event {int * pmu; } ;
struct TYPE_2__ {int pmu; } ;


 TYPE_1__ pt_pmu ;

int is_intel_pt_event(struct perf_event *event)
{
 return event->pmu == &pt_pmu.pmu;
}
