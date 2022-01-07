
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_callback {int evcb_flags; } ;
struct event_base {struct event_callback* current_event; } ;
struct event {int dummy; } ;


 int EVBASE_ACQUIRE_LOCK (struct event_base*,int ) ;
 scalar_t__ EVBASE_IN_THREAD (struct event_base*) ;
 int EVBASE_RELEASE_LOCK (struct event_base*,int ) ;
 int EVLIST_INIT ;
 struct event* event_callback_to_event (struct event_callback*) ;
 int th_base_lock ;

struct event *
event_base_get_running_event(struct event_base *base)
{
 struct event *ev = ((void*)0);
 EVBASE_ACQUIRE_LOCK(base, th_base_lock);
 if (EVBASE_IN_THREAD(base)) {
  struct event_callback *evcb = base->current_event;
  if (evcb->evcb_flags & EVLIST_INIT)
   ev = event_callback_to_event(evcb);
 }
 EVBASE_RELEASE_LOCK(base, th_base_lock);
 return ev;
}
