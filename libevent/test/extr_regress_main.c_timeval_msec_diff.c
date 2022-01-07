
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {long tv_sec; int tv_usec; } ;



long
timeval_msec_diff(const struct timeval *start, const struct timeval *end)
{
 long ms = end->tv_sec - start->tv_sec;
 ms *= 1000;
 ms += ((end->tv_usec - start->tv_usec)+500) / 1000;
 return ms;
}
