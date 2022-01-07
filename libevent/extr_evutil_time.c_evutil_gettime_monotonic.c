
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
struct evutil_monotonic_timer {int dummy; } ;


 int evutil_gettime_monotonic_ (struct evutil_monotonic_timer*,struct timeval*) ;

int
evutil_gettime_monotonic(struct evutil_monotonic_timer *timer,
                         struct timeval *tp)
{
  return evutil_gettime_monotonic_(timer, tp);
}
