
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;


 int __udelay (unsigned long long) ;
 int barrier () ;
 int do_div (unsigned long long,int) ;
 scalar_t__ get_tod_clock_fast () ;

void __ndelay(unsigned long long nsecs)
{
 u64 end;

 nsecs <<= 9;
 do_div(nsecs, 125);
 end = get_tod_clock_fast() + nsecs;
 if (nsecs & ~0xfffUL)
  __udelay(nsecs >> 12);
 while (get_tod_clock_fast() < end)
  barrier();
}
