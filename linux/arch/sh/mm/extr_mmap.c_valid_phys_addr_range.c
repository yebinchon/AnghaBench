
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ phys_addr_t ;


 scalar_t__ __MEMORY_START ;
 scalar_t__ __pa (int ) ;
 int high_memory ;

int valid_phys_addr_range(phys_addr_t addr, size_t count)
{
 if (addr < __MEMORY_START)
  return 0;
 if (addr + count > __pa(high_memory))
  return 0;

 return 1;
}
