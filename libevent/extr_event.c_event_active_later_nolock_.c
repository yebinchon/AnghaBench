
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_base {int dummy; } ;
struct event {int ev_flags; int ev_res; struct event_base* ev_base; } ;


 int EVENT_BASE_ASSERT_LOCKED (struct event_base*) ;
 int EVLIST_ACTIVE ;
 int EVLIST_ACTIVE_LATER ;
 int event_callback_activate_later_nolock_ (struct event_base*,int ) ;
 int event_to_event_callback (struct event*) ;

void
event_active_later_nolock_(struct event *ev, int res)
{
 struct event_base *base = ev->ev_base;
 EVENT_BASE_ASSERT_LOCKED(base);

 if (ev->ev_flags & (EVLIST_ACTIVE|EVLIST_ACTIVE_LATER)) {

  ev->ev_res |= res;
  return;
 }

 ev->ev_res = res;

 event_callback_activate_later_nolock_(base, event_to_event_callback(ev));
}
