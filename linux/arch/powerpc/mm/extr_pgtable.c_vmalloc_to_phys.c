
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 unsigned long __pa (int ) ;
 unsigned long offset_in_page (void*) ;
 int pfn_to_kaddr (unsigned long) ;
 unsigned long vmalloc_to_pfn (void*) ;

unsigned long vmalloc_to_phys(void *va)
{
 unsigned long pfn = vmalloc_to_pfn(va);

 BUG_ON(!pfn);
 return __pa(pfn_to_kaddr(pfn)) + offset_in_page(va);
}
