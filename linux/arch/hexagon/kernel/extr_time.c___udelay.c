
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long long __vmgettime () ;
 int cpu_relax () ;
 unsigned long fudgefactor ;
 unsigned long pcycle_freq_mhz ;

void __udelay(unsigned long usecs)
{
 unsigned long long start = __vmgettime();
 unsigned long long finish = (pcycle_freq_mhz * usecs) - fudgefactor;

 while ((__vmgettime() - start) < finish)
  cpu_relax();
}
