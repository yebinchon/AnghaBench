
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int dma_addr_t ;


 int PAGE_SIZE ;
 int __dma_page_dev_to_cpu (struct page*,unsigned int,size_t,int) ;
 int dma_to_pfn (struct device*,int) ;
 struct page* pfn_to_page (int ) ;

__attribute__((used)) static void arm_dma_sync_single_for_cpu(struct device *dev,
  dma_addr_t handle, size_t size, enum dma_data_direction dir)
{
 unsigned int offset = handle & (PAGE_SIZE - 1);
 struct page *page = pfn_to_page(dma_to_pfn(dev, handle-offset));
 __dma_page_dev_to_cpu(page, offset, size, dir);
}
