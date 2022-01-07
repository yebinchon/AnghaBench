
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wakeup_source {int active; int name; int last_time; int start_prevent_time; scalar_t__ autosleep_enabled; int active_count; } ;


 scalar_t__ WARN_ONCE (int ,char*) ;
 unsigned int atomic_inc_return (int *) ;
 int combined_event_count ;
 int ktime_get () ;
 int trace_wakeup_source_activate (int ,unsigned int) ;
 int wakeup_source_not_registered (struct wakeup_source*) ;

__attribute__((used)) static void wakeup_source_activate(struct wakeup_source *ws)
{
 unsigned int cec;

 if (WARN_ONCE(wakeup_source_not_registered(ws),
   "unregistered wakeup source\n"))
  return;

 ws->active = 1;
 ws->active_count++;
 ws->last_time = ktime_get();
 if (ws->autosleep_enabled)
  ws->start_prevent_time = ws->last_time;


 cec = atomic_inc_return(&combined_event_count);

 trace_wakeup_source_activate(ws->name, cec);
}
