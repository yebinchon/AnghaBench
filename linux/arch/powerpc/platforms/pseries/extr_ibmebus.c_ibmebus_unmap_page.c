
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int dma_addr_t ;



__attribute__((used)) static void ibmebus_unmap_page(struct device *dev,
          dma_addr_t dma_addr,
          size_t size,
          enum dma_data_direction direction,
          unsigned long attrs)
{
 return;
}
