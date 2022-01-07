
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_perf_event {int idx; } ;
struct perf_event {struct hw_perf_event hw; } ;
struct amd_uncore {int num_counters; int * events; } ;


 int PERF_EF_UPDATE ;
 int amd_uncore_stop (struct perf_event*,int ) ;
 struct perf_event* cmpxchg (int *,struct perf_event*,int *) ;
 struct amd_uncore* event_to_amd_uncore (struct perf_event*) ;

__attribute__((used)) static void amd_uncore_del(struct perf_event *event, int flags)
{
 int i;
 struct amd_uncore *uncore = event_to_amd_uncore(event);
 struct hw_perf_event *hwc = &event->hw;

 amd_uncore_stop(event, PERF_EF_UPDATE);

 for (i = 0; i < uncore->num_counters; i++) {
  if (cmpxchg(&uncore->events[i], event, ((void*)0)) == event)
   break;
 }

 hwc->idx = -1;
}
