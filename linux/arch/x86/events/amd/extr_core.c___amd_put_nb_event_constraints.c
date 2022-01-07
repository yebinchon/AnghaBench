
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_event {int dummy; } ;
struct cpu_hw_events {struct amd_nb* amd_nb; } ;
struct amd_nb {scalar_t__ owners; } ;
struct TYPE_2__ {int num_counters; } ;


 struct perf_event* cmpxchg (scalar_t__,struct perf_event*,int *) ;
 TYPE_1__ x86_pmu ;

__attribute__((used)) static void __amd_put_nb_event_constraints(struct cpu_hw_events *cpuc,
        struct perf_event *event)
{
 struct amd_nb *nb = cpuc->amd_nb;
 int i;
 for (i = 0; i < x86_pmu.num_counters; i++) {
  if (cmpxchg(nb->owners + i, event, ((void*)0)) == event)
   break;
 }
}
