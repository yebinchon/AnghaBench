
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; } ;
struct event_base {int dummy; } ;
struct event {int dummy; } ;
typedef int WSADATA ;
typedef int WORD ;


 int EV_PERSIST ;
 int MAKEWORD (int,int) ;
 int WSAStartup (int ,int *) ;
 int event_add (struct event*,struct timeval*) ;
 int event_assign (struct event*,struct event_base*,int,int,int ,void*) ;
 int event_base_dispatch (struct event_base*) ;
 struct event_base* event_base_new () ;
 int event_is_persistent ;
 int evutil_gettimeofday (int *,int *) ;
 int evutil_timerclear (struct timeval*) ;
 int lasttime ;
 int setbuf (int ,int *) ;
 int stderr ;
 int stdout ;
 int strcmp (char*,char*) ;
 int timeout_cb ;

int
main(int argc, char **argv)
{
 struct event timeout;
 struct timeval tv;
 struct event_base *base;
 int flags;
 if (argc == 2 && !strcmp(argv[1], "-p")) {
  event_is_persistent = 1;
  flags = EV_PERSIST;
 } else {
  event_is_persistent = 0;
  flags = 0;
 }


 base = event_base_new();


 event_assign(&timeout, base, -1, flags, timeout_cb, (void*) &timeout);

 evutil_timerclear(&tv);
 tv.tv_sec = 2;
 event_add(&timeout, &tv);

 evutil_gettimeofday(&lasttime, ((void*)0));

 setbuf(stdout, ((void*)0));
 setbuf(stderr, ((void*)0));

 event_base_dispatch(base);

 return (0);
}
