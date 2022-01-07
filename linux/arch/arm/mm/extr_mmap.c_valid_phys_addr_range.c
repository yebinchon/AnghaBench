
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ phys_addr_t ;


 scalar_t__ PHYS_OFFSET ;
 scalar_t__ __pa (scalar_t__) ;
 scalar_t__ high_memory ;

int valid_phys_addr_range(phys_addr_t addr, size_t size)
{
 if (addr < PHYS_OFFSET)
  return 0;
 if (addr + size > __pa(high_memory - 1) + 1)
  return 0;

 return 1;
}
