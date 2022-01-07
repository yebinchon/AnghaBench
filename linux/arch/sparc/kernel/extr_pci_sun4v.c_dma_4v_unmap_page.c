
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct pci_pbm_info {int devhandle; } ;
struct iommu_map_table {size_t table_map_base; } ;
struct iommu {struct iommu_map_table tbl; struct atu* atu; } ;
struct TYPE_3__ {struct pci_pbm_info* host_controller; struct iommu* iommu; } ;
struct device {TYPE_1__ archdata; } ;
struct atu {struct iommu_map_table tbl; TYPE_2__* iotsb; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef size_t dma_addr_t ;
struct TYPE_4__ {unsigned long iotsb_num; } ;


 size_t DMA_BIT_MASK (int) ;
 int DMA_NONE ;
 int IOMMU_ERROR_CODE ;
 size_t IO_PAGE_ALIGN (size_t) ;
 size_t IO_PAGE_MASK ;
 unsigned long IO_PAGE_SHIFT ;
 int WARN_ON (int) ;
 int dma_4v_iommu_demap (struct device*,int ,size_t,unsigned long,long,unsigned long) ;
 int iommu_tbl_range_free (struct iommu_map_table*,size_t,unsigned long,int ) ;
 scalar_t__ printk_ratelimit () ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void dma_4v_unmap_page(struct device *dev, dma_addr_t bus_addr,
         size_t sz, enum dma_data_direction direction,
         unsigned long attrs)
{
 struct pci_pbm_info *pbm;
 struct iommu *iommu;
 struct atu *atu;
 struct iommu_map_table *tbl;
 unsigned long npages;
 unsigned long iotsb_num;
 long entry;
 u32 devhandle;

 if (unlikely(direction == DMA_NONE)) {
  if (printk_ratelimit())
   WARN_ON(1);
  return;
 }

 iommu = dev->archdata.iommu;
 pbm = dev->archdata.host_controller;
 atu = iommu->atu;
 devhandle = pbm->devhandle;

 npages = IO_PAGE_ALIGN(bus_addr + sz) - (bus_addr & IO_PAGE_MASK);
 npages >>= IO_PAGE_SHIFT;
 bus_addr &= IO_PAGE_MASK;

 if (bus_addr <= DMA_BIT_MASK(32)) {
  iotsb_num = 0;
  tbl = &iommu->tbl;
 } else {
  iotsb_num = atu->iotsb->iotsb_num;
  tbl = &atu->tbl;
 }
 entry = (bus_addr - tbl->table_map_base) >> IO_PAGE_SHIFT;
 dma_4v_iommu_demap(dev, devhandle, bus_addr, iotsb_num, entry, npages);
 iommu_tbl_range_free(tbl, bus_addr, npages, IOMMU_ERROR_CODE);
}
