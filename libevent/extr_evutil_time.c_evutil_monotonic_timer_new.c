
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evutil_monotonic_timer {int dummy; } ;


 int memset (struct evutil_monotonic_timer*,int ,int) ;
 struct evutil_monotonic_timer* mm_malloc (int) ;

struct evutil_monotonic_timer *
evutil_monotonic_timer_new(void)
{
  struct evutil_monotonic_timer *p = ((void*)0);

  p = mm_malloc(sizeof(*p));
  if (!p) goto done;

  memset(p, 0, sizeof(*p));

 done:
  return p;
}
