
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ phys_addr_t ;
struct TYPE_3__ {scalar_t__ phys; scalar_t__ limit; scalar_t__ start; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* bat_addrs ;

unsigned long p_block_mapped(phys_addr_t pa)
{
 int b;
 for (b = 0; b < ARRAY_SIZE(bat_addrs); ++b)
  if (pa >= bat_addrs[b].phys
          && pa < (bat_addrs[b].limit-bat_addrs[b].start)
                +bat_addrs[b].phys)
   return bat_addrs[b].start+(pa-bat_addrs[b].phys);
 return 0;
}
