
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct device {int dummy; } ;
typedef int gfp_t ;


 size_t PAGE_SHIFT ;
 int __dma_clear_buffer (struct page*,size_t,int) ;
 int __free_page (struct page*) ;
 struct page* alloc_pages (int ,unsigned long) ;
 unsigned long get_order (size_t) ;
 int split_page (struct page*,unsigned long) ;

__attribute__((used)) static struct page *__dma_alloc_buffer(struct device *dev, size_t size,
           gfp_t gfp, int coherent_flag)
{
 unsigned long order = get_order(size);
 struct page *page, *p, *e;

 page = alloc_pages(gfp, order);
 if (!page)
  return ((void*)0);




 split_page(page, order);
 for (p = page + (size >> PAGE_SHIFT), e = page + (1 << order); p < e; p++)
  __free_page(p);

 __dma_clear_buffer(page, size, coherent_flag);

 return page;
}
