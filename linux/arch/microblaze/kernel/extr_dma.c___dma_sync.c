
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int phys_addr_t ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int BUG () ;



 int flush_dcache_range (int ,int ) ;
 int invalidate_dcache_range (int ,int ) ;

__attribute__((used)) static void __dma_sync(struct device *dev, phys_addr_t paddr, size_t size,
  enum dma_data_direction direction)
{
 switch (direction) {
 case 128:
 case 130:
  flush_dcache_range(paddr, paddr + size);
  break;
 case 129:
  invalidate_dcache_range(paddr, paddr + size);
  break;
 default:
  BUG();
 }
}
