
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct iommu_table {int it_offset; int it_page_shift; } ;
struct TYPE_2__ {int iommu_bypass; } ;
struct device {TYPE_1__ archdata; } ;


 int dev_dbg (struct device*,char*) ;
 int dev_err (struct device*,char*,int) ;
 int dev_info (struct device*,char*,...) ;
 scalar_t__ dev_is_pci (struct device*) ;
 scalar_t__ dma_iommu_bypass_supported (struct device*,int) ;
 struct iommu_table* get_iommu_table_base (struct device*) ;

int dma_iommu_dma_supported(struct device *dev, u64 mask)
{
 struct iommu_table *tbl = get_iommu_table_base(dev);

 if (dev_is_pci(dev) && dma_iommu_bypass_supported(dev, mask)) {
  dev->archdata.iommu_bypass = 1;
  dev_dbg(dev, "iommu: 64-bit OK, using fixed ops\n");
  return 1;
 }

 if (!tbl) {
  dev_err(dev, "Warning: IOMMU dma not supported: mask 0x%08llx, table unavailable\n", mask);
  return 0;
 }

 if (tbl->it_offset > (mask >> tbl->it_page_shift)) {
  dev_info(dev, "Warning: IOMMU offset too big for device mask\n");
  dev_info(dev, "mask: 0x%08llx, table offset: 0x%08lx\n",
    mask, tbl->it_offset << tbl->it_page_shift);
  return 0;
 }

 dev_dbg(dev, "iommu: not 64-bit, using default ops\n");
 dev->archdata.iommu_bypass = 0;
 return 1;
}
