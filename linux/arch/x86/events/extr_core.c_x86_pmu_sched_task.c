
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_event_context {int dummy; } ;
struct TYPE_2__ {int (* sched_task ) (struct perf_event_context*,int) ;} ;


 int stub1 (struct perf_event_context*,int) ;
 TYPE_1__ x86_pmu ;

__attribute__((used)) static void x86_pmu_sched_task(struct perf_event_context *ctx, bool sched_in)
{
 if (x86_pmu.sched_task)
  x86_pmu.sched_task(ctx, sched_in);
}
