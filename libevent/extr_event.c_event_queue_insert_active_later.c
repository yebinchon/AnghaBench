
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_callback {int evcb_flags; scalar_t__ evcb_pri; } ;
struct event_base {scalar_t__ nactivequeues; int active_later_queue; int event_count_active; int event_count_active_max; } ;


 int EVENT_BASE_ASSERT_LOCKED (struct event_base*) ;
 int EVLIST_ACTIVE ;
 int EVLIST_ACTIVE_LATER ;
 int EVUTIL_ASSERT (int) ;
 int INCR_EVENT_COUNT (struct event_base*,int) ;
 int MAX_EVENT_COUNT (int ,int ) ;
 int TAILQ_INSERT_TAIL (int *,struct event_callback*,int ) ;
 int evcb_active_next ;

__attribute__((used)) static void
event_queue_insert_active_later(struct event_base *base, struct event_callback *evcb)
{
 EVENT_BASE_ASSERT_LOCKED(base);
 if (evcb->evcb_flags & (EVLIST_ACTIVE_LATER|EVLIST_ACTIVE)) {

  return;
 }

 INCR_EVENT_COUNT(base, evcb->evcb_flags);
 evcb->evcb_flags |= EVLIST_ACTIVE_LATER;
 base->event_count_active++;
 MAX_EVENT_COUNT(base->event_count_active_max, base->event_count_active);
 EVUTIL_ASSERT(evcb->evcb_pri < base->nactivequeues);
 TAILQ_INSERT_TAIL(&base->active_later_queue, evcb, evcb_active_next);
}
