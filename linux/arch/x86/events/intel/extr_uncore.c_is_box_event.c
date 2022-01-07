
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_event {int * pmu; } ;
struct intel_uncore_box {TYPE_1__* pmu; } ;
struct TYPE_2__ {int pmu; } ;



__attribute__((used)) static bool is_box_event(struct intel_uncore_box *box, struct perf_event *event)
{
 return &box->pmu->pmu == event->pmu;
}
