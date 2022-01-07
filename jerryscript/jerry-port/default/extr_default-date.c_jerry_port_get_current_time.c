
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;


 scalar_t__ gettimeofday (struct timeval*,int *) ;
 int time (int*) ;

double jerry_port_get_current_time (void)
{

  struct timeval tv;

  if (gettimeofday (&tv, ((void*)0)) == 0)
  {
    return ((double) tv.tv_sec) * 1000.0 + ((double) tv.tv_usec) / 1000.0;
  }
  return 0.0;
}
