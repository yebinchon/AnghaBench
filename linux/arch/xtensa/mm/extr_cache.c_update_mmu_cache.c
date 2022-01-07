
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; } ;
struct page {int flags; } ;
typedef int pte_t ;


 unsigned long DCACHE_ALIAS_MASK ;
 int PG_arch_1 ;
 int PageReserved (struct page*) ;
 unsigned long TLBTEMP_BASE_1 ;
 int VM_EXEC ;
 int __flush_dcache_page (unsigned long) ;
 int __flush_invalidate_dcache_page_alias (unsigned long,unsigned long) ;
 int __invalidate_icache_page (unsigned long) ;
 int __invalidate_icache_page_alias (unsigned long,unsigned long) ;
 int clear_bit (int ,int *) ;
 int flush_tlb_page (struct vm_area_struct*,unsigned long) ;
 scalar_t__ kmap_atomic (struct page*) ;
 int kunmap_atomic (void*) ;
 unsigned long page_to_phys (struct page*) ;
 struct page* pfn_to_page (unsigned long) ;
 int pfn_valid (unsigned long) ;
 unsigned long pte_pfn (int ) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

void
update_mmu_cache(struct vm_area_struct * vma, unsigned long addr, pte_t *ptep)
{
 unsigned long pfn = pte_pfn(*ptep);
 struct page *page;

 if (!pfn_valid(pfn))
  return;

 page = pfn_to_page(pfn);



 flush_tlb_page(vma, addr);
 if (!PageReserved(page) && !test_bit(PG_arch_1, &page->flags)
     && (vma->vm_flags & VM_EXEC) != 0) {
  unsigned long paddr = (unsigned long)kmap_atomic(page);
  __flush_dcache_page(paddr);
  __invalidate_icache_page(paddr);
  set_bit(PG_arch_1, &page->flags);
  kunmap_atomic((void *)paddr);
 }

}
