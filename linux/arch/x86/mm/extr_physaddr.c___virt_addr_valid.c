
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long FIXADDR_START ;
 unsigned long PAGE_OFFSET ;
 unsigned long PAGE_SHIFT ;
 scalar_t__ __vmalloc_start_set ;
 scalar_t__ is_vmalloc_addr (void*) ;
 int pfn_valid (unsigned long) ;

bool __virt_addr_valid(unsigned long x)
{
 if (x < PAGE_OFFSET)
  return 0;
 if (__vmalloc_start_set && is_vmalloc_addr((void *) x))
  return 0;
 if (x >= FIXADDR_START)
  return 0;
 return pfn_valid((x - PAGE_OFFSET) >> PAGE_SHIFT);
}
