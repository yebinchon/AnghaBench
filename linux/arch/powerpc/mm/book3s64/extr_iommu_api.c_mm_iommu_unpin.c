
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct mm_iommu_table_group_mem_t {int* hpas; long entries; } ;


 int MM_IOMMU_TABLE_GROUP_PAGE_DIRTY ;
 int PAGE_SHIFT ;
 int SetPageDirty (struct page*) ;
 struct page* pfn_to_page (int) ;
 int put_page (struct page*) ;

__attribute__((used)) static void mm_iommu_unpin(struct mm_iommu_table_group_mem_t *mem)
{
 long i;
 struct page *page = ((void*)0);

 if (!mem->hpas)
  return;

 for (i = 0; i < mem->entries; ++i) {
  if (!mem->hpas[i])
   continue;

  page = pfn_to_page(mem->hpas[i] >> PAGE_SHIFT);
  if (!page)
   continue;

  if (mem->hpas[i] & MM_IOMMU_TABLE_GROUP_PAGE_DIRTY)
   SetPageDirty(page);

  put_page(page);
  mem->hpas[i] = 0;
 }
}
