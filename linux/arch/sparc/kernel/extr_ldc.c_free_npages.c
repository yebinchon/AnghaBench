
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ldc_iommu {int iommu_map_table; } ;


 unsigned long PAGE_ALIGN (int) ;
 int PAGE_MASK ;
 unsigned long PAGE_SHIFT ;
 int iommu_tbl_range_free (int *,int,unsigned long,unsigned long) ;
 unsigned long ldc_cookie_to_index (int,struct ldc_iommu*) ;
 int ldc_demap (struct ldc_iommu*,unsigned long,int,unsigned long,unsigned long) ;

__attribute__((used)) static void free_npages(unsigned long id, struct ldc_iommu *iommu,
   u64 cookie, u64 size)
{
 unsigned long npages, entry;

 npages = PAGE_ALIGN(((cookie & ~PAGE_MASK) + size)) >> PAGE_SHIFT;

 entry = ldc_cookie_to_index(cookie, iommu);
 ldc_demap(iommu, id, cookie, entry, npages);
 iommu_tbl_range_free(&iommu->iommu_map_table, cookie, npages, entry);
}
