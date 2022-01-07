
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu {int * page_table; int tbl; } ;
struct device {int dummy; } ;
typedef int iopte_t ;


 unsigned long IOMMU_ERROR_CODE ;
 unsigned long iommu_tbl_range_alloc (struct device*,int *,unsigned long,int *,unsigned long,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline iopte_t *alloc_npages(struct device *dev,
        struct iommu *iommu,
        unsigned long npages)
{
 unsigned long entry;

 entry = iommu_tbl_range_alloc(dev, &iommu->tbl, npages, ((void*)0),
          (unsigned long)(-1), 0);
 if (unlikely(entry == IOMMU_ERROR_CODE))
  return ((void*)0);

 return iommu->page_table + entry;
}
