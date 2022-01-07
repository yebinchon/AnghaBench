
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event {int dummy; } ;
typedef int evutil_socket_t ;


 int called ;
 int event_del (struct event*) ;
 int event_get_signal (struct event*) ;
 int printf (char*,int) ;

__attribute__((used)) static void
signal_cb(evutil_socket_t fd, short event, void *arg)
{
 struct event *signal = arg;

 printf("signal_cb: got signal %d\n", event_get_signal(signal));

 if (called >= 2)
  event_del(signal);

 called++;
}
