
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_2__ {scalar_t__ dma_offset; } ;
struct device {TYPE_1__ archdata; } ;


 scalar_t__ OF_BAD_ADDR ;
 scalar_t__ cell_dma_nommu_offset ;
 int cell_get_iommu_table (struct device*) ;
 scalar_t__ cell_iommu_enabled ;
 scalar_t__ cell_iommu_get_fixed_address (struct device*) ;
 scalar_t__ dma_iommu_fixed_base ;
 int set_iommu_table_base (struct device*,int ) ;

__attribute__((used)) static void cell_dma_dev_setup(struct device *dev)
{
 if (cell_iommu_enabled) {
  u64 addr = cell_iommu_get_fixed_address(dev);

  if (addr != OF_BAD_ADDR)
   dev->archdata.dma_offset = addr + dma_iommu_fixed_base;
  set_iommu_table_base(dev, cell_get_iommu_table(dev));
 } else {
  dev->archdata.dma_offset = cell_dma_nommu_offset;
 }
}
