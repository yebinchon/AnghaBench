
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_callback {int dummy; } ;
struct event_base {int nactivequeues; int active_later_queue; int * activequeues; } ;


 struct event_callback* TAILQ_FIRST (int *) ;
 struct event_callback* TAILQ_NEXT (struct event_callback*,int ) ;
 int evcb_active_next ;
 scalar_t__ event_base_cancel_single_callback_ (struct event_base*,struct event_callback*,int) ;

__attribute__((used)) static int event_base_free_queues_(struct event_base *base, int run_finalizers)
{
 int deleted = 0, i;

 for (i = 0; i < base->nactivequeues; ++i) {
  struct event_callback *evcb, *next;
  for (evcb = TAILQ_FIRST(&base->activequeues[i]); evcb; ) {
   next = TAILQ_NEXT(evcb, evcb_active_next);
   deleted += event_base_cancel_single_callback_(base, evcb, run_finalizers);
   evcb = next;
  }
 }

 {
  struct event_callback *evcb;
  while ((evcb = TAILQ_FIRST(&base->active_later_queue))) {
   deleted += event_base_cancel_single_callback_(base, evcb, run_finalizers);
  }
 }

 return deleted;
}
