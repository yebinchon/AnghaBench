
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_base {int event_break; } ;


 int EVBASE_ACQUIRE_LOCK (struct event_base*,int ) ;
 scalar_t__ EVBASE_NEED_NOTIFY (struct event_base*) ;
 int EVBASE_RELEASE_LOCK (struct event_base*,int ) ;
 int evthread_notify_base (struct event_base*) ;
 int th_base_lock ;

int
event_base_loopbreak(struct event_base *event_base)
{
 int r = 0;
 if (event_base == ((void*)0))
  return (-1);

 EVBASE_ACQUIRE_LOCK(event_base, th_base_lock);
 event_base->event_break = 1;

 if (EVBASE_NEED_NOTIFY(event_base)) {
  r = evthread_notify_base(event_base);
 } else {
  r = (0);
 }
 EVBASE_RELEASE_LOCK(event_base, th_base_lock);
 return r;
}
