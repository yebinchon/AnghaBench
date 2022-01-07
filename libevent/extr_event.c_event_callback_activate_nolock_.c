
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_callback {int evcb_flags; } ;
struct event_base {int dummy; } ;


 scalar_t__ EVBASE_NEED_NOTIFY (struct event_base*) ;


 int EVLIST_FINALIZING ;
 int EVUTIL_ASSERT (int ) ;
 int EVUTIL_FALLTHROUGH ;
 int event_queue_insert_active (struct event_base*,struct event_callback*) ;
 int event_queue_remove_active_later (struct event_base*,struct event_callback*) ;
 int evthread_notify_base (struct event_base*) ;

int
event_callback_activate_nolock_(struct event_base *base,
    struct event_callback *evcb)
{
 int r = 1;

 if (evcb->evcb_flags & EVLIST_FINALIZING)
  return 0;

 switch (evcb->evcb_flags & (129|128)) {
 default:
  EVUTIL_ASSERT(0);
  EVUTIL_FALLTHROUGH;
 case 128:
  event_queue_remove_active_later(base, evcb);
  r = 0;
  break;
 case 129:
  return 0;
 case 0:
  break;
 }

 event_queue_insert_active(base, evcb);

 if (EVBASE_NEED_NOTIFY(base))
  evthread_notify_base(base);

 return r;
}
