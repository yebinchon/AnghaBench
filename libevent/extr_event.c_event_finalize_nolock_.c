
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct event_base {int dummy; } ;
struct TYPE_3__ {int evcb_evfinalize; } ;
struct TYPE_4__ {TYPE_1__ evcb_cb_union; } ;
struct event {int ev_flags; TYPE_2__ ev_evcallback; int ev_closure; } ;
typedef int event_finalize_callback_fn ;
typedef int ev_uint8_t ;


 int EVENT_DEL_NOBLOCK ;
 unsigned int EVENT_FINALIZE_FREE_ ;
 int EVLIST_FINALIZING ;
 int EV_CLOSURE_EVENT_FINALIZE ;
 int EV_CLOSURE_EVENT_FINALIZE_FREE ;
 int EV_FINALIZE ;
 int event_active_nolock_ (struct event*,int ,int) ;
 int event_del_nolock_ (struct event*,int ) ;

__attribute__((used)) static int
event_finalize_nolock_(struct event_base *base, unsigned flags, struct event *ev, event_finalize_callback_fn cb)
{
 ev_uint8_t closure = (flags & EVENT_FINALIZE_FREE_) ?
     EV_CLOSURE_EVENT_FINALIZE_FREE : EV_CLOSURE_EVENT_FINALIZE;

 event_del_nolock_(ev, EVENT_DEL_NOBLOCK);
 ev->ev_closure = closure;
 ev->ev_evcallback.evcb_cb_union.evcb_evfinalize = cb;
 event_active_nolock_(ev, EV_FINALIZE, 1);
 ev->ev_flags |= EVLIST_FINALIZING;
 return 0;
}
