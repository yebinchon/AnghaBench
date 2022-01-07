
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long long HZ ;
 int __delay (unsigned long long) ;
 unsigned long long loops_per_jiffy ;

void __const_udelay(unsigned long xloops)
{
 unsigned long long loops;

 loops = (unsigned long long)xloops * loops_per_jiffy * HZ;

 __delay(loops >> 32);
}
