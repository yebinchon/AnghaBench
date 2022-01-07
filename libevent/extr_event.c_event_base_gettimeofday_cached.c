
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timeval {int dummy; } ;
struct TYPE_2__ {scalar_t__ tv_sec; } ;
struct event_base {int tv_clock_diff; TYPE_1__ tv_cache; } ;


 int EVBASE_ACQUIRE_LOCK (struct event_base*,int ) ;
 int EVBASE_RELEASE_LOCK (struct event_base*,int ) ;
 struct event_base* current_base ;
 int evutil_gettimeofday (struct timeval*,int *) ;
 int evutil_timeradd (TYPE_1__*,int *,struct timeval*) ;
 int th_base_lock ;

int
event_base_gettimeofday_cached(struct event_base *base, struct timeval *tv)
{
 int r;
 if (!base) {
  base = current_base;
  if (!current_base)
   return evutil_gettimeofday(tv, ((void*)0));
 }

 EVBASE_ACQUIRE_LOCK(base, th_base_lock);
 if (base->tv_cache.tv_sec == 0) {
  r = evutil_gettimeofday(tv, ((void*)0));
 } else {
  evutil_timeradd(&base->tv_cache, &base->tv_clock_diff, tv);
  r = 0;
 }
 EVBASE_RELEASE_LOCK(base, th_base_lock);
 return r;
}
