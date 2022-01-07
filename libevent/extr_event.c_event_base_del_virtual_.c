
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_base {scalar_t__ virtual_event_count; } ;


 int EVBASE_ACQUIRE_LOCK (struct event_base*,int ) ;
 scalar_t__ EVBASE_NEED_NOTIFY (struct event_base*) ;
 int EVBASE_RELEASE_LOCK (struct event_base*,int ) ;
 int EVUTIL_ASSERT (int) ;
 int evthread_notify_base (struct event_base*) ;
 int th_base_lock ;

void
event_base_del_virtual_(struct event_base *base)
{
 EVBASE_ACQUIRE_LOCK(base, th_base_lock);
 EVUTIL_ASSERT(base->virtual_event_count > 0);
 base->virtual_event_count--;
 if (base->virtual_event_count == 0 && EVBASE_NEED_NOTIFY(base))
  evthread_notify_base(base);
 EVBASE_RELEASE_LOCK(base, th_base_lock);
}
