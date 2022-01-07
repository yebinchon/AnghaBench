
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double time_t ;
struct timezone {int dummy; } ;
struct timeval {int tv_sec; double tv_usec; } ;


 int gettimeofday (struct timeval*,struct timezone*) ;
 int time (double*) ;

double I_FloatTime (void)
{
 time_t t;

 time (&t);

 return t;
}
