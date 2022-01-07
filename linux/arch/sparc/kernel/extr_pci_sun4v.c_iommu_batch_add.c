
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct iommu_batch {scalar_t__ npages; int * pglist; } ;


 int BUG_ON (int) ;
 scalar_t__ PGLIST_NENTS ;
 int iommu_batch ;
 long iommu_batch_flush (struct iommu_batch*,int ) ;
 struct iommu_batch* this_cpu_ptr (int *) ;

__attribute__((used)) static inline long iommu_batch_add(u64 phys_page, u64 mask)
{
 struct iommu_batch *p = this_cpu_ptr(&iommu_batch);

 BUG_ON(p->npages >= PGLIST_NENTS);

 p->pglist[p->npages++] = phys_page;
 if (p->npages == PGLIST_NENTS)
  return iommu_batch_flush(p, mask);

 return 0;
}
