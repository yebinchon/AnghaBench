
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t PAGE_SHIFT ;
 size_t PHYS_MASK ;

int valid_mmap_phys_addr_range(unsigned long pfn, size_t size)
{
 return (pfn + (size >> PAGE_SHIFT)) <= (1 + (PHYS_MASK >> PAGE_SHIFT));
}
