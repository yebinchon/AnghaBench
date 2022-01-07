
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {scalar_t__ cpu_type; } ;


 int PAGE_SHIFT ;
 int WARN_ON_ONCE (int) ;
 scalar_t__ __va (int ) ;
 TYPE_1__ boot_cpu_data ;
 int free_pages (unsigned long,int) ;
 int get_order (size_t) ;
 scalar_t__ pcxl ;
 scalar_t__ pcxl2 ;
 int pcxl_free_range (unsigned long,size_t) ;
 int unmap_uncached_pages (unsigned long,size_t) ;

void arch_dma_free(struct device *dev, size_t size, void *vaddr,
  dma_addr_t dma_handle, unsigned long attrs)
{
 int order = get_order(size);

 WARN_ON_ONCE(boot_cpu_data.cpu_type != pcxl2 &&
       boot_cpu_data.cpu_type != pcxl);

 size = 1 << (order + PAGE_SHIFT);
 unmap_uncached_pages((unsigned long)vaddr, size);
 pcxl_free_range((unsigned long)vaddr, size);

 free_pages((unsigned long)__va(dma_handle), order);
}
