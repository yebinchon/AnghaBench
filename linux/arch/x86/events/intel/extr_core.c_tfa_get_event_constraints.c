
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int dummy; } ;
struct event_constraint {unsigned long long idxmsk64; int weight; int idxmsk; } ;
struct cpu_hw_events {int dummy; } ;


 int allow_tsx_force_abort ;
 struct event_constraint* dyn_constraint (struct cpu_hw_events*,struct event_constraint*,int) ;
 struct event_constraint* hsw_get_event_constraints (struct cpu_hw_events*,int,struct perf_event*) ;
 scalar_t__ test_bit (int,int ) ;

__attribute__((used)) static struct event_constraint *
tfa_get_event_constraints(struct cpu_hw_events *cpuc, int idx,
     struct perf_event *event)
{
 struct event_constraint *c = hsw_get_event_constraints(cpuc, idx, event);




 if (!allow_tsx_force_abort && test_bit(3, c->idxmsk)) {
  c = dyn_constraint(cpuc, c, idx);
  c->idxmsk64 &= ~(1ULL << 3);
  c->weight--;
 }

 return c;
}
