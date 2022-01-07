
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ weight; size_t event; scalar_t__ counter; int unassigned; } ;
struct perf_sched {size_t max_events; scalar_t__ max_weight; TYPE_1__ state; struct event_constraint** constraints; } ;
struct event_constraint {scalar_t__ weight; } ;



__attribute__((used)) static bool perf_sched_next_event(struct perf_sched *sched)
{
 struct event_constraint *c;

 if (!sched->state.unassigned || !--sched->state.unassigned)
  return 0;

 do {

  sched->state.event++;
  if (sched->state.event >= sched->max_events) {

   sched->state.event = 0;
   sched->state.weight++;
   if (sched->state.weight > sched->max_weight)
    return 0;
  }
  c = sched->constraints[sched->state.event];
 } while (c->weight != sched->state.weight);

 sched->state.counter = 0;

 return 1;
}
