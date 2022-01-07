
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zpci_dev {unsigned long start_dma; int iommu_bitmap_lock; int lazy_bitmap; int iommu_bitmap; } ;
struct device {int dummy; } ;
typedef unsigned long dma_addr_t ;


 unsigned long PAGE_SHIFT ;
 int bitmap_clear (int ,unsigned long,int) ;
 int bitmap_set (int ,unsigned long,int) ;
 scalar_t__ s390_iommu_strict ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int to_pci_dev (struct device*) ;
 struct zpci_dev* to_zpci (int ) ;

__attribute__((used)) static void dma_free_address(struct device *dev, dma_addr_t dma_addr, int size)
{
 struct zpci_dev *zdev = to_zpci(to_pci_dev(dev));
 unsigned long flags, offset;

 offset = (dma_addr - zdev->start_dma) >> PAGE_SHIFT;

 spin_lock_irqsave(&zdev->iommu_bitmap_lock, flags);
 if (!zdev->iommu_bitmap)
  goto out;

 if (s390_iommu_strict)
  bitmap_clear(zdev->iommu_bitmap, offset, size);
 else
  bitmap_set(zdev->lazy_bitmap, offset, size);

out:
 spin_unlock_irqrestore(&zdev->iommu_bitmap_lock, flags);
}
