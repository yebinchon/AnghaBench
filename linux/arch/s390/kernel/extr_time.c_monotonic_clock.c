
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long long sched_clock () ;

unsigned long long monotonic_clock(void)
{
 return sched_clock();
}
