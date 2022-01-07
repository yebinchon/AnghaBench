
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {unsigned long index; } ;
typedef int pmd_t ;


 unsigned long PMD_SIZE ;
 int PTRS_PER_PMD ;
 struct page* virt_to_page (void*) ;

__attribute__((used)) static unsigned long __gmap_segment_gaddr(unsigned long *entry)
{
 struct page *page;
 unsigned long offset, mask;

 offset = (unsigned long) entry / sizeof(unsigned long);
 offset = (offset & (PTRS_PER_PMD - 1)) * PMD_SIZE;
 mask = ~(PTRS_PER_PMD * sizeof(pmd_t) - 1);
 page = virt_to_page((void *)((unsigned long) entry & mask));
 return page->index + offset;
}
