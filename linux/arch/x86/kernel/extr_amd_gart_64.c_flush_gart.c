
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int amd_flush_garts () ;
 int iommu_bitmap_lock ;
 int need_flush ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void flush_gart(void)
{
 unsigned long flags;

 spin_lock_irqsave(&iommu_bitmap_lock, flags);
 if (need_flush) {
  amd_flush_garts();
  need_flush = 0;
 }
 spin_unlock_irqrestore(&iommu_bitmap_lock, flags);
}
