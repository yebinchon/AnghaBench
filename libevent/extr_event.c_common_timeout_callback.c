
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timeval {scalar_t__ tv_sec; int tv_usec; } ;
struct event_base {int dummy; } ;
struct TYPE_2__ {scalar_t__ tv_sec; int tv_usec; } ;
struct event {TYPE_1__ ev_timeout; } ;
struct common_timeout_list {int events; struct event_base* base; } ;
typedef int evutil_socket_t ;


 int EVBASE_ACQUIRE_LOCK (struct event_base*,int ) ;
 int EVBASE_RELEASE_LOCK (struct event_base*,int ) ;
 int EVENT_DEL_NOBLOCK ;
 int EV_TIMEOUT ;
 int MICROSECONDS_MASK ;
 struct event* TAILQ_FIRST (int *) ;
 int common_timeout_schedule (struct common_timeout_list*,struct timeval*,struct event*) ;
 int event_active_nolock_ (struct event*,int ,int) ;
 int event_del_nolock_ (struct event*,int ) ;
 int gettime (struct event_base*,struct timeval*) ;
 int th_base_lock ;

__attribute__((used)) static void
common_timeout_callback(evutil_socket_t fd, short what, void *arg)
{
 struct timeval now;
 struct common_timeout_list *ctl = arg;
 struct event_base *base = ctl->base;
 struct event *ev = ((void*)0);
 EVBASE_ACQUIRE_LOCK(base, th_base_lock);
 gettime(base, &now);
 while (1) {
  ev = TAILQ_FIRST(&ctl->events);
  if (!ev || ev->ev_timeout.tv_sec > now.tv_sec ||
      (ev->ev_timeout.tv_sec == now.tv_sec &&
   (ev->ev_timeout.tv_usec&MICROSECONDS_MASK) > now.tv_usec))
   break;
  event_del_nolock_(ev, EVENT_DEL_NOBLOCK);
  event_active_nolock_(ev, EV_TIMEOUT, 1);
 }
 if (ev)
  common_timeout_schedule(ctl, &now, ev);
 EVBASE_RELEASE_LOCK(base, th_base_lock);
}
