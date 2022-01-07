
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; } ;
struct page {int flags; } ;
typedef int pte_t ;
typedef unsigned long phys_addr_t ;


 unsigned long PAGE_MASK ;
 int PG_dc_clean ;
 int VM_EXEC ;
 struct page* ZERO_PAGE (int ) ;
 int __flush_dcache_page (unsigned long,unsigned long) ;
 int __inv_icache_page (unsigned long,unsigned long) ;
 scalar_t__ addr_not_cache_congruent (unsigned long,unsigned long) ;
 int create_tlb (struct vm_area_struct*,unsigned long,int *) ;
 struct page* pfn_to_page (int ) ;
 int pte_pfn (int ) ;
 unsigned long pte_val (int ) ;
 int test_and_set_bit (int ,int *) ;

void update_mmu_cache(struct vm_area_struct *vma, unsigned long vaddr_unaligned,
        pte_t *ptep)
{
 unsigned long vaddr = vaddr_unaligned & PAGE_MASK;
 phys_addr_t paddr = pte_val(*ptep) & PAGE_MASK;
 struct page *page = pfn_to_page(pte_pfn(*ptep));

 create_tlb(vma, vaddr, ptep);

 if (page == ZERO_PAGE(0)) {
  return;
 }
 if ((vma->vm_flags & VM_EXEC) ||
      addr_not_cache_congruent(paddr, vaddr)) {

  int dirty = !test_and_set_bit(PG_dc_clean, &page->flags);
  if (dirty) {

   __flush_dcache_page(paddr, paddr);


   if (vma->vm_flags & VM_EXEC)
    __inv_icache_page(paddr, vaddr);
  }
 }
}
