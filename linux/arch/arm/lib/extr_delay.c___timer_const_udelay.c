
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long long ticks_per_jiffy; } ;


 unsigned long long UDELAY_SHIFT ;
 int __timer_delay (unsigned long long) ;
 TYPE_1__ arm_delay_ops ;

__attribute__((used)) static void __timer_const_udelay(unsigned long xloops)
{
 unsigned long long loops = xloops;
 loops *= arm_delay_ops.ticks_per_jiffy;
 __timer_delay(loops >> UDELAY_SHIFT);
}
