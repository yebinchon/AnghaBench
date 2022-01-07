
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_base {int dummy; } ;
typedef int event_base_foreach_event_cb ;


 int EVBASE_ACQUIRE_LOCK (struct event_base*,int ) ;
 int EVBASE_RELEASE_LOCK (struct event_base*,int ) ;
 int event_base_foreach_event_nolock_ (struct event_base*,int ,void*) ;
 int th_base_lock ;

int
event_base_foreach_event(struct event_base *base,
    event_base_foreach_event_cb fn, void *arg)
{
 int r;
 if ((!fn) || (!base)) {
  return -1;
 }
 EVBASE_ACQUIRE_LOCK(base, th_base_lock);
 r = event_base_foreach_event_nolock_(base, fn, arg);
 EVBASE_RELEASE_LOCK(base, th_base_lock);
 return r;
}
