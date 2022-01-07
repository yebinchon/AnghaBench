
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;


 int __GFP_ZERO ;
 int __pa (void*) ;
 void* alloc_pages_exact (size_t,int) ;
 int free_pages_exact (void*,size_t) ;
 int init_mm ;
 int set_nocache_walk_ops ;
 scalar_t__ walk_page_range (int *,unsigned long,unsigned long,int *,int *) ;

void *
arch_dma_alloc(struct device *dev, size_t size, dma_addr_t *dma_handle,
  gfp_t gfp, unsigned long attrs)
{
 unsigned long va;
 void *page;

 page = alloc_pages_exact(size, gfp | __GFP_ZERO);
 if (!page)
  return ((void*)0);


 *dma_handle = __pa(page);

 va = (unsigned long)page;





 if (walk_page_range(&init_mm, va, va + size, &set_nocache_walk_ops,
   ((void*)0))) {
  free_pages_exact(page, size);
  return ((void*)0);
 }

 return (void *)va;
}
