
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct perf_event {TYPE_1__* pmu; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct TYPE_3__ {scalar_t__ type; } ;


 TYPE_2__ amd_llc_pmu ;

__attribute__((used)) static bool is_llc_event(struct perf_event *event)
{
 return event->pmu->type == amd_llc_pmu.type;
}
