
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_constraint {int flags; } ;
struct cpu_hw_events {struct event_constraint* constraint_list; } ;


 int PERF_X86_EVENT_DYNAMIC ;
 int WARN_ON_ONCE (int) ;

__attribute__((used)) static struct event_constraint *
dyn_constraint(struct cpu_hw_events *cpuc, struct event_constraint *c, int idx)
{
 WARN_ON_ONCE(!cpuc->constraint_list);

 if (!(c->flags & PERF_X86_EVENT_DYNAMIC)) {
  struct event_constraint *cx;




  cx = &cpuc->constraint_list[idx];





  *cx = *c;




  cx->flags |= PERF_X86_EVENT_DYNAMIC;
  c = cx;
 }

 return c;
}
