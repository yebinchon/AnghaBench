
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 unsigned long MAX_UDELAY_US ;
 int UDELAY_MULT ;
 int UDELAY_SHIFT ;
 int __delay (int) ;
 int do_div (int,int) ;
 int lpj_fine ;
 int riscv_timebase ;
 scalar_t__ unlikely (int) ;

void udelay(unsigned long usecs)
{
 u64 ucycles = (u64)usecs * lpj_fine * UDELAY_MULT;
 u64 n;

 if (unlikely(usecs > MAX_UDELAY_US)) {
  n = (u64)usecs * riscv_timebase;
  do_div(n, 1000000);

  __delay(n);
  return;
 }

 __delay(ucycles >> UDELAY_SHIFT);
}
