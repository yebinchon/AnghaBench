
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long phys_addr_t ;


 unsigned long IMMR_SIZE ;
 unsigned long PAGE_OFFSET ;
 unsigned long PHYS_IMMR_BASE ;
 unsigned long VIRT_IMMR_BASE ;
 scalar_t__ __map_without_ltlbs ;
 unsigned long __pa (unsigned long) ;
 unsigned long block_mapped_ram ;

phys_addr_t v_block_mapped(unsigned long va)
{
 unsigned long p = PHYS_IMMR_BASE;

 if (__map_without_ltlbs)
  return 0;
 if (va >= VIRT_IMMR_BASE && va < VIRT_IMMR_BASE + IMMR_SIZE)
  return p + va - VIRT_IMMR_BASE;
 if (va >= PAGE_OFFSET && va < PAGE_OFFSET + block_mapped_ram)
  return __pa(va);
 return 0;
}
