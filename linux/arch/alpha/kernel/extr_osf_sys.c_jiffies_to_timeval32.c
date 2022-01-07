
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval32 {unsigned long tv_usec; unsigned long tv_sec; } ;


 unsigned long HZ ;

__attribute__((used)) static inline void
jiffies_to_timeval32(unsigned long jiffies, struct timeval32 *value)
{
 value->tv_usec = (jiffies % HZ) * (1000000L / HZ);
 value->tv_sec = jiffies / HZ;
}
