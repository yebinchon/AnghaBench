
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int L1_CACHE_BYTES ;
 unsigned long PAGE_SHIFT ;
 unsigned long PAGE_SIZE ;
 int mtspr (unsigned int const,unsigned long) ;
 unsigned long page_to_pfn (struct page*) ;

__attribute__((used)) static void cache_loop(struct page *page, const unsigned int reg)
{
 unsigned long paddr = page_to_pfn(page) << PAGE_SHIFT;
 unsigned long line = paddr & ~(L1_CACHE_BYTES - 1);

 while (line < paddr + PAGE_SIZE) {
  mtspr(reg, line);
  line += L1_CACHE_BYTES;
 }
}
