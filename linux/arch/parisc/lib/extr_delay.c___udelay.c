
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cpu_hz; } ;


 int __cr16_delay (unsigned long) ;
 TYPE_1__ boot_cpu_data ;

void __udelay(unsigned long usecs)
{
 __cr16_delay(usecs * ((unsigned long)boot_cpu_data.cpu_hz / 1000000UL));
}
