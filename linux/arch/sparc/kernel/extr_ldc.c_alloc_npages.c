
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ldc_mtable_entry {int dummy; } ;
struct ldc_iommu {struct ldc_mtable_entry* page_table; int iommu_map_table; } ;


 long IOMMU_ERROR_CODE ;
 long iommu_tbl_range_alloc (int *,int *,unsigned long,int *,unsigned long,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct ldc_mtable_entry *alloc_npages(struct ldc_iommu *iommu,
          unsigned long npages)
{
 long entry;

 entry = iommu_tbl_range_alloc(((void*)0), &iommu->iommu_map_table,
          npages, ((void*)0), (unsigned long)-1, 0);
 if (unlikely(entry == IOMMU_ERROR_CODE))
  return ((void*)0);

 return iommu->page_table + entry;
}
