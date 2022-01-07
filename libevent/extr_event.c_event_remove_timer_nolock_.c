
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct event_base {int dummy; } ;
struct TYPE_3__ {int ev_timeout; } ;
struct TYPE_4__ {TYPE_1__ ev_io; } ;
struct event {int ev_flags; TYPE_2__ ev_; struct event_base* ev_base; } ;


 int EVENT_BASE_ASSERT_LOCKED (struct event_base*) ;
 int EVLIST_TIMEOUT ;
 int event_debug (char*) ;
 int event_debug_assert_is_setup_ (struct event*) ;
 int event_queue_remove_timeout (struct event_base*,struct event*) ;
 int evutil_timerclear (int *) ;

int
event_remove_timer_nolock_(struct event *ev)
{
 struct event_base *base = ev->ev_base;

 EVENT_BASE_ASSERT_LOCKED(base);
 event_debug_assert_is_setup_(ev);

 event_debug(("event_remove_timer_nolock: event: %p", ev));


 if (ev->ev_flags & EVLIST_TIMEOUT) {
  event_queue_remove_timeout(base, ev);
  evutil_timerclear(&ev->ev_.ev_io.ev_timeout);
 }

 return (0);
}
