
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int config; } ;
struct TYPE_3__ {int precise_ip; } ;
struct perf_event {TYPE_2__ hw; TYPE_1__ attr; } ;
struct event_constraint {int dummy; } ;
struct cpu_hw_events {int dummy; } ;


 scalar_t__ constraint_match (struct event_constraint*,int ) ;
 struct event_constraint fixed0_constraint ;
 struct event_constraint* hsw_get_event_constraints (struct cpu_hw_events*,int,struct perf_event*) ;

__attribute__((used)) static struct event_constraint *
icl_get_event_constraints(struct cpu_hw_events *cpuc, int idx,
     struct perf_event *event)
{




 if ((event->attr.precise_ip == 3) &&
     constraint_match(&fixed0_constraint, event->hw.config))
  return &fixed0_constraint;

 return hsw_get_event_constraints(cpuc, idx, event);
}
