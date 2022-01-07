
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ HZ ;
 unsigned long LPJ ;
 int __delay (long) ;

void
ndelay(unsigned long nsecs)
{
 nsecs *= (((unsigned long)HZ << 32) / 1000000000) * LPJ;
 __delay((long)nsecs >> 32);
}
