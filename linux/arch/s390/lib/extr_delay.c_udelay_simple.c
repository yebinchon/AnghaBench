
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;


 int cpu_relax () ;
 scalar_t__ get_tod_clock_fast () ;

void udelay_simple(unsigned long long usecs)
{
 u64 end;

 end = get_tod_clock_fast() + (usecs << 12);
 while (get_tod_clock_fast() < end)
  cpu_relax();
}
