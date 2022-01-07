
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 size_t PAGE_SHIFT ;
 int __free_page (struct page*) ;

__attribute__((used)) static void __dma_free_buffer(struct page *page, size_t size)
{
 struct page *e = page + (size >> PAGE_SHIFT);

 while (page < e) {
  __free_page(page);
  page++;
 }
}
