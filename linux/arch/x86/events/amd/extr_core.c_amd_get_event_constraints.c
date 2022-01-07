
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int hw; } ;
struct event_constraint {int dummy; } ;
struct cpu_hw_events {int dummy; } ;


 struct event_constraint* __amd_get_nb_event_constraints (struct cpu_hw_events*,struct perf_event*,int *) ;
 scalar_t__ amd_has_nb (struct cpu_hw_events*) ;
 scalar_t__ amd_is_nb_event (int *) ;
 struct event_constraint unconstrained ;

__attribute__((used)) static struct event_constraint *
amd_get_event_constraints(struct cpu_hw_events *cpuc, int idx,
     struct perf_event *event)
{



 if (!(amd_has_nb(cpuc) && amd_is_nb_event(&event->hw)))
  return &unconstrained;

 return __amd_get_nb_event_constraints(cpuc, event, ((void*)0));
}
