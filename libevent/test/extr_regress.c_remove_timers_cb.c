
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event {int dummy; } ;
typedef int evutil_socket_t ;


 int event_remove_timer (struct event*) ;

__attribute__((used)) static void remove_timers_cb(evutil_socket_t fd, short what, void *arg)
{
 struct event **ep = arg;
 (void) fd; (void) what;
 event_remove_timer(ep[0]);
 event_remove_timer(ep[1]);
}
