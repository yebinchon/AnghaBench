
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bitmap_clear (int ,unsigned long,int) ;
 int iommu_bitmap_lock ;
 int iommu_gart_bitmap ;
 unsigned long next_bit ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void free_iommu(unsigned long offset, int size)
{
 unsigned long flags;

 spin_lock_irqsave(&iommu_bitmap_lock, flags);
 bitmap_clear(iommu_gart_bitmap, offset, size);
 if (offset >= next_bit)
  next_bit = offset + size;
 spin_unlock_irqrestore(&iommu_bitmap_lock, flags);
}
