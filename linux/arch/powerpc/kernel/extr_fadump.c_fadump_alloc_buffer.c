
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int GFP_KERNEL ;
 unsigned long PAGE_ALIGN (unsigned long) ;
 unsigned long PAGE_SIZE ;
 int __GFP_ZERO ;
 void* alloc_pages_exact (unsigned long,int) ;
 int mark_page_reserved (struct page*) ;
 struct page* virt_to_page (void*) ;

__attribute__((used)) static void *fadump_alloc_buffer(unsigned long size)
{
 unsigned long count, i;
 struct page *page;
 void *vaddr;

 vaddr = alloc_pages_exact(size, GFP_KERNEL | __GFP_ZERO);
 if (!vaddr)
  return ((void*)0);

 count = PAGE_ALIGN(size) / PAGE_SIZE;
 page = virt_to_page(vaddr);
 for (i = 0; i < count; i++)
  mark_page_reserved(page + i);
 return vaddr;
}
