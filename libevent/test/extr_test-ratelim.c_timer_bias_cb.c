
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
struct event {int dummy; } ;
typedef int evutil_socket_t ;


 int event_del (struct event*) ;
 int evutil_gettimeofday (struct timeval*,int *) ;
 int evutil_timersub (struct timeval*,struct timeval*,struct timeval*) ;
 int timer_bias_events ;
 int timer_bias_spend ;
 struct timeval timer_bias_start ;

__attribute__((used)) static void
timer_bias_cb(evutil_socket_t fd, short events, void *arg)
{
 struct event *event = arg;
 struct timeval end;
 struct timeval diff;


 evutil_gettimeofday(&end, ((void*)0));
 evutil_timersub(&end, &timer_bias_start, &diff);
 timer_bias_spend += diff.tv_sec + diff.tv_usec * 1e6;
 timer_bias_start = end;

 if (++timer_bias_events == 100)
  event_del(event);
}
