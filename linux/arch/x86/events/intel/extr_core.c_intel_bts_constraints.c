
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int dummy; } ;
struct event_constraint {int dummy; } ;


 struct event_constraint bts_constraint ;
 int intel_pmu_has_bts (struct perf_event*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static struct event_constraint *
intel_bts_constraints(struct perf_event *event)
{
 if (unlikely(intel_pmu_has_bts(event)))
  return &bts_constraint;

 return ((void*)0);
}
