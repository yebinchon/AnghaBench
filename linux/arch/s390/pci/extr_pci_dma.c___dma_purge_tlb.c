
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct zpci_dev {int iommu_bitmap_lock; int iommu_pages; int lazy_bitmap; int iommu_bitmap; scalar_t__ fh; int tlb_refresh; } ;
typedef int dma_addr_t ;


 int ENOMEM ;
 int PAGE_ALIGN (size_t) ;
 int ZPCI_PTE_VALID ;
 int ZPCI_PTE_VALID_MASK ;
 int bitmap_andnot (int ,int ,int ,int ) ;
 int bitmap_zero (int ,int ) ;
 int s390_iommu_strict ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ zpci_refresh_global (struct zpci_dev*) ;
 int zpci_refresh_trans (int,int ,int ) ;

__attribute__((used)) static int __dma_purge_tlb(struct zpci_dev *zdev, dma_addr_t dma_addr,
      size_t size, int flags)
{
 unsigned long irqflags;
 int ret;
 if ((flags & ZPCI_PTE_VALID_MASK) == ZPCI_PTE_VALID) {
  if (!zdev->tlb_refresh)
   return 0;
 } else {
  if (!s390_iommu_strict)
   return 0;
 }

 ret = zpci_refresh_trans((u64) zdev->fh << 32, dma_addr,
     PAGE_ALIGN(size));
 if (ret == -ENOMEM && !s390_iommu_strict) {

  if (zpci_refresh_global(zdev))
   goto out;

  spin_lock_irqsave(&zdev->iommu_bitmap_lock, irqflags);
  bitmap_andnot(zdev->iommu_bitmap, zdev->iommu_bitmap,
         zdev->lazy_bitmap, zdev->iommu_pages);
  bitmap_zero(zdev->lazy_bitmap, zdev->iommu_pages);
  spin_unlock_irqrestore(&zdev->iommu_bitmap_lock, irqflags);
  ret = 0;
 }
out:
 return ret;
}
