
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wakeup_source {int active; int wakeup_count; int event_count; } ;


 scalar_t__ events_check_enabled ;
 int pm_system_wakeup () ;
 int wakeup_source_activate (struct wakeup_source*) ;

__attribute__((used)) static void wakeup_source_report_event(struct wakeup_source *ws, bool hard)
{
 ws->event_count++;

 if (events_check_enabled)
  ws->wakeup_count++;

 if (!ws->active)
  wakeup_source_activate(ws);

 if (hard)
  pm_system_wakeup();
}
