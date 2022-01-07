
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int HZ ;
 int __delay (int) ;
 int loops_per_jiffy ;

void __const_udelay(unsigned long xloops)
{
 u64 loops;

 loops = (u64)xloops * loops_per_jiffy * HZ;

 __delay(loops >> 32);
}
