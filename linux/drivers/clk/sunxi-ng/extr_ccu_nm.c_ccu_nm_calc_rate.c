
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;


 int do_div (unsigned long,unsigned long) ;

__attribute__((used)) static unsigned long ccu_nm_calc_rate(unsigned long parent,
          unsigned long n, unsigned long m)
{
 u64 rate = parent;

 rate *= n;
 do_div(rate, m);

 return rate;
}
