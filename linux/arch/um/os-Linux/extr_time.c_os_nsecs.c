
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;


 int CLOCK_MONOTONIC ;
 int clock_gettime (int ,struct timespec*) ;
 long long timespec_to_ns (struct timespec*) ;

long long os_nsecs(void)
{
 struct timespec ts;

 clock_gettime(CLOCK_MONOTONIC,&ts);
 return timespec_to_ns(&ts);
}
