
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; int tv_usec; } ;
struct event_base {int dummy; } ;
struct event {int dummy; } ;
struct cpu_usage_timer {int dummy; } ;
typedef int evutil_socket_t ;
typedef int WSADATA ;
typedef int WORD ;


 int AF_UNIX ;
 int EV_PERSIST ;
 int EV_WRITE ;
 int MAKEWORD (int,int) ;
 int SOCK_STREAM ;
 int WSAStartup (int ,int *) ;
 int event_add (struct event*,int *) ;
 int event_base_dispatch (struct event_base*) ;
 int event_base_free (struct event_base*) ;
 struct event_base* event_base_new () ;
 int event_free (struct event*) ;
 struct event* event_new (struct event_base*,int ,int,int ,struct event**) ;
 int evtimer_add (struct event*,struct timeval*) ;
 struct event* evtimer_new (struct event_base*,int ,struct event**) ;
 int evutil_socketpair (int ,int ,int ,int *) ;
 int get_cpu_usage (struct cpu_usage_timer*,double*,double*,double*) ;
 int printf (char*,int,int,double) ;
 int start_cpu_usage_timer (struct cpu_usage_timer*) ;
 int timeout_cb ;
 int write_cb ;

int
main(int argc, char **argv)
{
 struct event* ev;
 struct event* timeout;
 struct event_base* base;

 evutil_socket_t pair[2];
 struct timeval tv;
 struct cpu_usage_timer timer;

 double usage, secPassed, secUsed;
 if (evutil_socketpair(AF_UNIX, SOCK_STREAM, 0, pair) == -1)
  return (1);


 if (!(base = event_base_new()))
  return (1);


 timeout = evtimer_new(base,timeout_cb,&timeout);

 ev = event_new(base,pair[1],EV_WRITE | EV_PERSIST, write_cb, &ev);

 tv.tv_sec = 1;
 tv.tv_usec = 500*1000;

 evtimer_add(timeout, &tv);

 event_add(ev, ((void*)0));

 start_cpu_usage_timer(&timer);

 event_base_dispatch(base);

 event_free(ev);
 event_free(timeout);
 event_base_free(base);

 get_cpu_usage(&timer, &secPassed, &secUsed, &usage);




 printf("usec used=%d, usec passed=%d, cpu usage=%.2f%%\n",
     (int)(secUsed*1e6),
     (int)(secPassed*1e6),
     usage*100);

 if (usage > 50.0)
   return 1;

 return 0;
}
