
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long NDELAY_MULT ;
 unsigned long long NDELAY_SHIFT ;
 int __delay (unsigned long long) ;
 unsigned long lpj_fine ;

void ndelay(unsigned long nsecs)
{




 unsigned long long ncycles = nsecs * lpj_fine * NDELAY_MULT;
 __delay(ncycles >> NDELAY_SHIFT);
}
