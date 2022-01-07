
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int precise_ip; } ;
struct perf_event {TYPE_1__ attr; } ;
struct event_constraint {int dummy; } ;
struct cpu_hw_events {int dummy; } ;


 struct event_constraint counter0_constraint ;
 struct event_constraint* intel_get_event_constraints (struct cpu_hw_events*,int,struct perf_event*) ;

__attribute__((used)) static struct event_constraint *
glp_get_event_constraints(struct cpu_hw_events *cpuc, int idx,
     struct perf_event *event)
{
 struct event_constraint *c;


 if (event->attr.precise_ip == 3)
  return &counter0_constraint;

 c = intel_get_event_constraints(cpuc, idx, event);

 return c;
}
