
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int dummy; } ;
struct cpu_hw_events {int n_events; int* current_idx; struct perf_event** event; } ;


 int BUG_ON (int) ;

__attribute__((used)) static int active_event_index(struct cpu_hw_events *cpuc,
         struct perf_event *event)
{
 int i;

 for (i = 0; i < cpuc->n_events; i++) {
  if (cpuc->event[i] == event)
   break;
 }
 BUG_ON(i == cpuc->n_events);
 return cpuc->current_idx[i];
}
