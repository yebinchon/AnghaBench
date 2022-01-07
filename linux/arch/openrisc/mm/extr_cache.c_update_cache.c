
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; } ;
struct page {int flags; } ;
typedef int pte_t ;


 unsigned long PAGE_SHIFT ;
 int PG_dc_clean ;
 int VM_EXEC ;
 struct page* pfn_to_page (unsigned long) ;
 unsigned long pte_val (int ) ;
 int sync_icache_dcache (struct page*) ;
 int test_and_set_bit (int ,int *) ;

void update_cache(struct vm_area_struct *vma, unsigned long address,
 pte_t *pte)
{
 unsigned long pfn = pte_val(*pte) >> PAGE_SHIFT;
 struct page *page = pfn_to_page(pfn);
 int dirty = !test_and_set_bit(PG_dc_clean, &page->flags);






 if ((vma->vm_flags & VM_EXEC) && dirty)
  sync_icache_dcache(page);
}
