
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef unsigned int phys_addr_t ;


 unsigned int PAGE_MASK ;
 unsigned int PAGE_SHIFT ;
 int __dma_sync (void*,size_t,int) ;
 int __dma_sync_page_highmem (struct page*,unsigned int,size_t,int) ;
 scalar_t__ page_address (struct page*) ;
 struct page* pfn_to_page (unsigned int) ;

__attribute__((used)) static void __dma_sync_page(phys_addr_t paddr, size_t size, int dir)
{
 struct page *page = pfn_to_page(paddr >> PAGE_SHIFT);
 unsigned offset = paddr & ~PAGE_MASK;




 unsigned long start = (unsigned long)page_address(page) + offset;
 __dma_sync((void *)start, size, dir);

}
