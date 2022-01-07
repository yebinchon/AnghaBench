
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zpci_dev {unsigned long next_bit; int iommu_bitmap_lock; scalar_t__ start_dma; int iommu_pages; int lazy_bitmap; int iommu_bitmap; } ;
struct device {int dummy; } ;
typedef scalar_t__ dma_addr_t ;


 scalar_t__ DMA_MAPPING_ERROR ;
 unsigned long PAGE_SIZE ;
 unsigned long __dma_alloc_iommu (struct device*,unsigned long,int) ;
 int bitmap_andnot (int ,int ,int ,int ) ;
 int bitmap_zero (int ,int ) ;
 int s390_iommu_strict ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int to_pci_dev (struct device*) ;
 struct zpci_dev* to_zpci (int ) ;
 scalar_t__ zpci_refresh_global (struct zpci_dev*) ;

__attribute__((used)) static dma_addr_t dma_alloc_address(struct device *dev, int size)
{
 struct zpci_dev *zdev = to_zpci(to_pci_dev(dev));
 unsigned long offset, flags;

 spin_lock_irqsave(&zdev->iommu_bitmap_lock, flags);
 offset = __dma_alloc_iommu(dev, zdev->next_bit, size);
 if (offset == -1) {
  if (!s390_iommu_strict) {

   if (zpci_refresh_global(zdev))
    goto out_error;

   bitmap_andnot(zdev->iommu_bitmap, zdev->iommu_bitmap,
          zdev->lazy_bitmap, zdev->iommu_pages);
   bitmap_zero(zdev->lazy_bitmap, zdev->iommu_pages);
  }

  offset = __dma_alloc_iommu(dev, 0, size);
  if (offset == -1)
   goto out_error;
 }
 zdev->next_bit = offset + size;
 spin_unlock_irqrestore(&zdev->iommu_bitmap_lock, flags);

 return zdev->start_dma + offset * PAGE_SIZE;

out_error:
 spin_unlock_irqrestore(&zdev->iommu_bitmap_lock, flags);
 return DMA_MAPPING_ERROR;
}
