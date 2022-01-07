
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct device {int dummy; } ;
struct arm_dma_free_args {void* cpu_addr; int want_vaddr; struct page* page; int size; struct device* dev; } ;
struct arm_dma_buffer {TYPE_1__* allocator; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int (* free ) (struct arm_dma_free_args*) ;} ;


 unsigned long DMA_ATTR_NO_KERNEL_MAPPING ;
 int PAGE_ALIGN (size_t) ;
 scalar_t__ WARN (int,char*,void*) ;
 struct arm_dma_buffer* arm_dma_buffer_find (void*) ;
 int dma_to_pfn (struct device*,int ) ;
 int kfree (struct arm_dma_buffer*) ;
 struct page* pfn_to_page (int ) ;
 int stub1 (struct arm_dma_free_args*) ;

__attribute__((used)) static void __arm_dma_free(struct device *dev, size_t size, void *cpu_addr,
      dma_addr_t handle, unsigned long attrs,
      bool is_coherent)
{
 struct page *page = pfn_to_page(dma_to_pfn(dev, handle));
 struct arm_dma_buffer *buf;
 struct arm_dma_free_args args = {
  .dev = dev,
  .size = PAGE_ALIGN(size),
  .cpu_addr = cpu_addr,
  .page = page,
  .want_vaddr = ((attrs & DMA_ATTR_NO_KERNEL_MAPPING) == 0),
 };

 buf = arm_dma_buffer_find(cpu_addr);
 if (WARN(!buf, "Freeing invalid buffer %p\n", cpu_addr))
  return;

 buf->allocator->free(&args);
 kfree(buf);
}
