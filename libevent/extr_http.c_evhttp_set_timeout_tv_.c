
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; scalar_t__ tv_usec; } ;


 int evutil_timerclear (struct timeval*) ;

__attribute__((used)) static void
evhttp_set_timeout_tv_(struct timeval *tv, const struct timeval *timeout, int def)
{
 if (timeout == ((void*)0) && def != -1) {
  tv->tv_sec = def;
  tv->tv_usec = 0;
  return;
 }

 if (timeout) {
  *tv = *timeout;
 } else {
  evutil_timerclear(tv);
 }
}
