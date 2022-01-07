
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uintmax_t ;
typedef int timestamp_t ;
typedef int time_t ;


 scalar_t__ TIME_MAX ;

int date_overflows(timestamp_t t)
{
 time_t sys;


 if ((uintmax_t)t >= TIME_MAX)
  return 1;






 sys = t;
 return t != sys || (t < 1) != (sys < 1);
}
