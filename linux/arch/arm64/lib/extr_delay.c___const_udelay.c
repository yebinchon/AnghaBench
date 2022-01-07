
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __delay (int ) ;
 int xloops_to_cycles (unsigned long) ;

inline void __const_udelay(unsigned long xloops)
{
 __delay(xloops_to_cycles(xloops));
}
