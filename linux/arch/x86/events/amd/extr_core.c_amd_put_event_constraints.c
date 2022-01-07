
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int hw; } ;
struct cpu_hw_events {int dummy; } ;


 int __amd_put_nb_event_constraints (struct cpu_hw_events*,struct perf_event*) ;
 scalar_t__ amd_has_nb (struct cpu_hw_events*) ;
 scalar_t__ amd_is_nb_event (int *) ;

__attribute__((used)) static void amd_put_event_constraints(struct cpu_hw_events *cpuc,
          struct perf_event *event)
{
 if (amd_has_nb(cpuc) && amd_is_nb_event(&event->hw))
  __amd_put_nb_event_constraints(cpuc, event);
}
