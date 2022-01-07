
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef scalar_t__ dma_addr_t ;


 int __dma_page_cpu_to_dev (scalar_t__,size_t,int) ;
 scalar_t__ page_to_phys (struct page*) ;

__attribute__((used)) static dma_addr_t arm_nommu_dma_map_page(struct device *dev, struct page *page,
      unsigned long offset, size_t size,
      enum dma_data_direction dir,
      unsigned long attrs)
{
 dma_addr_t handle = page_to_phys(page) + offset;

 __dma_page_cpu_to_dev(handle, size, dir);

 return handle;
}
