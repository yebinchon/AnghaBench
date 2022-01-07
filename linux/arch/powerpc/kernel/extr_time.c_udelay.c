
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __delay (unsigned long) ;
 unsigned long tb_ticks_per_usec ;

void udelay(unsigned long usecs)
{
 __delay(tb_ticks_per_usec * usecs);
}
