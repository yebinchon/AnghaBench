
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;



int gettimeofday (struct timeval *tv,
                  void *tz)
{
  (void) tz;
  tv->tv_sec = 0;
  tv->tv_usec = 0;
  return 0;
}
