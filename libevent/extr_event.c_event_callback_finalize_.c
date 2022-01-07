
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_callback {int dummy; } ;
struct event_base {int dummy; } ;


 int EVBASE_ACQUIRE_LOCK (struct event_base*,int ) ;
 int EVBASE_RELEASE_LOCK (struct event_base*,int ) ;
 int event_callback_finalize_nolock_ (struct event_base*,unsigned int,struct event_callback*,void (*) (struct event_callback*,void*)) ;
 int th_base_lock ;

void
event_callback_finalize_(struct event_base *base, unsigned flags, struct event_callback *evcb, void (*cb)(struct event_callback *, void *))
{
 EVBASE_ACQUIRE_LOCK(base, th_base_lock);
 event_callback_finalize_nolock_(base, flags, evcb, cb);
 EVBASE_RELEASE_LOCK(base, th_base_lock);
}
