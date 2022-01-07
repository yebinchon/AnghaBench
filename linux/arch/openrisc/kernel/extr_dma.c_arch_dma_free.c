
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int dma_addr_t ;


 int WARN_ON (int ) ;
 int clear_nocache_walk_ops ;
 int free_pages_exact (void*,size_t) ;
 int init_mm ;
 int walk_page_range (int *,unsigned long,unsigned long,int *,int *) ;

void
arch_dma_free(struct device *dev, size_t size, void *vaddr,
  dma_addr_t dma_handle, unsigned long attrs)
{
 unsigned long va = (unsigned long)vaddr;


 WARN_ON(walk_page_range(&init_mm, va, va + size,
   &clear_nocache_walk_ops, ((void*)0)));

 free_pages_exact(vaddr, size);
}
