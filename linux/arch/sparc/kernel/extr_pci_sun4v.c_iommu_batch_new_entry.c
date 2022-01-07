
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct iommu_batch {unsigned long entry; unsigned long npages; } ;


 int iommu_batch ;
 int iommu_batch_flush (struct iommu_batch*,int ) ;
 struct iommu_batch* this_cpu_ptr (int *) ;

__attribute__((used)) static inline void iommu_batch_new_entry(unsigned long entry, u64 mask)
{
 struct iommu_batch *p = this_cpu_ptr(&iommu_batch);

 if (p->entry + p->npages == entry)
  return;
 if (p->entry != ~0UL)
  iommu_batch_flush(p, mask);
 p->entry = entry;
}
