
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phys_addr_t ;


 int PAGE_SHIFT ;
 int phys_addr_valid (int) ;

int valid_mmap_phys_addr_range(unsigned long pfn, size_t count)
{
 phys_addr_t addr = (phys_addr_t)pfn << PAGE_SHIFT;

 return phys_addr_valid(addr + count - 1);
}
