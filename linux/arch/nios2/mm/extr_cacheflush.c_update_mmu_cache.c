
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; } ;
struct page {int flags; } ;
struct address_space {int dummy; } ;
typedef int pte_t ;


 int PG_dcache_clean ;
 int VM_EXEC ;
 struct page* ZERO_PAGE (int ) ;
 int __flush_dcache_page (struct address_space*,struct page*) ;
 int flush_aliases (struct address_space*,struct page*) ;
 int flush_icache_page (struct vm_area_struct*,struct page*) ;
 struct address_space* page_mapping_file (struct page*) ;
 struct page* pfn_to_page (unsigned long) ;
 int pfn_valid (unsigned long) ;
 unsigned long pte_pfn (int ) ;
 int reload_tlb_page (struct vm_area_struct*,unsigned long,int ) ;
 int test_and_set_bit (int ,int *) ;

void update_mmu_cache(struct vm_area_struct *vma,
        unsigned long address, pte_t *ptep)
{
 pte_t pte = *ptep;
 unsigned long pfn = pte_pfn(pte);
 struct page *page;
 struct address_space *mapping;

 reload_tlb_page(vma, address, pte);

 if (!pfn_valid(pfn))
  return;





 page = pfn_to_page(pfn);
 if (page == ZERO_PAGE(0))
  return;

 mapping = page_mapping_file(page);
 if (!test_and_set_bit(PG_dcache_clean, &page->flags))
  __flush_dcache_page(mapping, page);

 if(mapping)
 {
  flush_aliases(mapping, page);
  if (vma->vm_flags & VM_EXEC)
   flush_icache_page(vma, page);
 }
}
