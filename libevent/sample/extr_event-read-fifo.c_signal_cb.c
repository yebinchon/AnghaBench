
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_base {int dummy; } ;
typedef int evutil_socket_t ;


 int event_base_loopbreak (struct event_base*) ;

__attribute__((used)) static void
signal_cb(evutil_socket_t fd, short event, void *arg)
{
 struct event_base *base = arg;
 event_base_loopbreak(base);
}
