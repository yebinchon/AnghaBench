
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int config; } ;
struct perf_event {TYPE_1__ hw; } ;
struct event_constraint {unsigned int idxmsk64; } ;
struct cpu_hw_events {int dummy; } ;


 int HSW_IN_TX_CHECKPOINTED ;
 struct event_constraint counter2_constraint ;
 struct event_constraint emptyconstraint ;
 struct event_constraint* intel_get_event_constraints (struct cpu_hw_events*,int,struct perf_event*) ;

__attribute__((used)) static struct event_constraint *
hsw_get_event_constraints(struct cpu_hw_events *cpuc, int idx,
     struct perf_event *event)
{
 struct event_constraint *c;

 c = intel_get_event_constraints(cpuc, idx, event);


 if (event->hw.config & HSW_IN_TX_CHECKPOINTED) {
  if (c->idxmsk64 & (1U << 2))
   return &counter2_constraint;
  return &emptyconstraint;
 }

 return c;
}
