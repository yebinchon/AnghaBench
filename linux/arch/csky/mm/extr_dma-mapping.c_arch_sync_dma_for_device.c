
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int phys_addr_t ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int BUG () ;



 int cache_op (int ,size_t,int ) ;
 int dma_wb_range ;
 int dma_wbinv_range ;

void arch_sync_dma_for_device(struct device *dev, phys_addr_t paddr,
         size_t size, enum dma_data_direction dir)
{
 switch (dir) {
 case 128:
  cache_op(paddr, size, dma_wb_range);
  break;
 case 129:
 case 130:
  cache_op(paddr, size, dma_wbinv_range);
  break;
 default:
  BUG();
 }
}
