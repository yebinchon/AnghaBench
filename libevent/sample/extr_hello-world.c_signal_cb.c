
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int member_0; int member_1; } ;
struct event_base {int dummy; } ;
typedef int evutil_socket_t ;


 int event_base_loopexit (struct event_base*,struct timeval*) ;
 int printf (char*) ;

__attribute__((used)) static void
signal_cb(evutil_socket_t sig, short events, void *user_data)
{
 struct event_base *base = user_data;
 struct timeval delay = { 2, 0 };

 printf("Caught an interrupt signal; exiting cleanly in two seconds.\n");

 event_base_loopexit(base, &delay);
}
