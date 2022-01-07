
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned calc_ext_dsor(unsigned long rate)
{
 unsigned dsor;
 for (dsor = 2; dsor < 96; ++dsor) {
  if ((dsor & 1) && dsor > 8)
   continue;
  if (rate >= 96000000 / dsor)
   break;
 }
 return dsor;
}
