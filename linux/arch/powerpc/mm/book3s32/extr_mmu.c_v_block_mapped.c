
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned long phys_addr_t ;
struct TYPE_3__ {unsigned long start; unsigned long limit; unsigned long phys; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* bat_addrs ;

phys_addr_t v_block_mapped(unsigned long va)
{
 int b;
 for (b = 0; b < ARRAY_SIZE(bat_addrs); ++b)
  if (va >= bat_addrs[b].start && va < bat_addrs[b].limit)
   return bat_addrs[b].phys + (va - bat_addrs[b].start);
 return 0;
}
