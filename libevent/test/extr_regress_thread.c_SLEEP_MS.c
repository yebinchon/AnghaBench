
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; int tv_usec; } ;


 int evutil_usleep_ (struct timeval*) ;

__attribute__((used)) static void
SLEEP_MS(int ms)
{
 struct timeval tv;
 tv.tv_sec = ms/1000;
 tv.tv_usec = (ms%1000)*1000;
 evutil_usleep_(&tv);
}
