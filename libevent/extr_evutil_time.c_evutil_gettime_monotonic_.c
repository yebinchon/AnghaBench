
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
struct evutil_monotonic_timer {int dummy; } ;


 int adjust_monotonic_time (struct evutil_monotonic_timer*,struct timeval*) ;
 scalar_t__ evutil_gettimeofday (struct timeval*,int *) ;

int
evutil_gettime_monotonic_(struct evutil_monotonic_timer *base,
    struct timeval *tp)
{
 if (evutil_gettimeofday(tp, ((void*)0)) < 0)
  return -1;
 adjust_monotonic_time(base, tp);
 return 0;

}
