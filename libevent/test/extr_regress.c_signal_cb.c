
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event {int dummy; } ;
typedef int evutil_socket_t ;


 int evsignal_del (struct event*) ;
 int test_ok ;

__attribute__((used)) static void
signal_cb(evutil_socket_t fd, short event, void *arg)
{
 struct event *ev = arg;

 evsignal_del(ev);
 test_ok = 1;
}
