
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_callback {int evcb_flags; } ;
struct event_base {int dummy; } ;


 scalar_t__ EVBASE_NEED_NOTIFY (struct event_base*) ;
 int EVLIST_ACTIVE ;
 int EVLIST_ACTIVE_LATER ;
 int event_queue_insert_active_later (struct event_base*,struct event_callback*) ;
 int evthread_notify_base (struct event_base*) ;

int
event_callback_activate_later_nolock_(struct event_base *base,
    struct event_callback *evcb)
{
 if (evcb->evcb_flags & (EVLIST_ACTIVE|EVLIST_ACTIVE_LATER))
  return 0;

 event_queue_insert_active_later(base, evcb);
 if (EVBASE_NEED_NOTIFY(base))
  evthread_notify_base(base);
 return 1;
}
