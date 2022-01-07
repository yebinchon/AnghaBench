
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long phys_addr_t ;


 unsigned long IMMR_SIZE ;
 unsigned long PHYS_IMMR_BASE ;
 unsigned long VIRT_IMMR_BASE ;
 scalar_t__ __map_without_ltlbs ;
 scalar_t__ __va (unsigned long) ;
 unsigned long block_mapped_ram ;

unsigned long p_block_mapped(phys_addr_t pa)
{
 unsigned long p = PHYS_IMMR_BASE;

 if (__map_without_ltlbs)
  return 0;
 if (pa >= p && pa < p + IMMR_SIZE)
  return VIRT_IMMR_BASE + pa - p;
 if (pa < block_mapped_ram)
  return (unsigned long)__va(pa);
 return 0;
}
