
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; scalar_t__ tv_usec; } ;


 int evutil_timerclear (struct timeval*) ;

__attribute__((used)) static void
evhttp_set_timeout_(struct timeval *tv, int timeout, int def)
{
 if (timeout == -1) {
  timeout = def;
 }

 if (timeout == -1) {
  evutil_timerclear(tv);
 } else {
  struct timeval timeout_tv;
  timeout_tv.tv_sec = timeout;
  timeout_tv.tv_usec = 0;
  *tv = timeout_tv;
 }
}
