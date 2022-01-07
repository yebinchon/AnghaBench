
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int frequency; } ;


 int PPCR ;
 TYPE_1__* sa11x0_freq_table ;

unsigned int sa11x0_getspeed(unsigned int cpu)
{
 if (cpu)
  return 0;
 return sa11x0_freq_table[PPCR & 0xf].frequency;
}
