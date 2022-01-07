
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long UDELAY_MULT ;
 int __timer_const_udelay (unsigned long) ;

__attribute__((used)) static void __timer_udelay(unsigned long usecs)
{
 __timer_const_udelay(usecs * UDELAY_MULT);
}
