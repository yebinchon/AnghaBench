
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long PAGE_SHIFT ;
 unsigned long PHYS_MASK ;

int valid_mmap_phys_addr_range(unsigned long pfn, size_t size)
{
 return !(((pfn << PAGE_SHIFT) + size) & ~PHYS_MASK);
}
