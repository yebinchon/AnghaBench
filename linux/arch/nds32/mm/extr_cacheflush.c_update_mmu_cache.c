
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {scalar_t__ vm_mm; int vm_flags; } ;
struct page {int flags; } ;
typedef int pte_t ;
struct TYPE_2__ {scalar_t__ active_mm; } ;


 int NDS32_SR_TLB_VPN ;
 int PG_dcache_dirty ;
 int VM_EXEC ;
 int __nds32__isb () ;
 int __nds32__mtsr_dsb (unsigned long,int ) ;
 int __nds32__tlbop_rwr (int ) ;
 int cpu_cache_wbinval_page (unsigned long,int) ;
 TYPE_1__* current ;
 scalar_t__ kmap_atomic (struct page*) ;
 int kunmap_atomic (void*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 struct page* pfn_to_page (unsigned long) ;
 int pfn_valid (unsigned long) ;
 unsigned long pte_pfn (int ) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

void update_mmu_cache(struct vm_area_struct *vma, unsigned long addr,
        pte_t * pte)
{
 struct page *page;
 unsigned long pfn = pte_pfn(*pte);
 unsigned long flags;

 if (!pfn_valid(pfn))
  return;

 if (vma->vm_mm == current->active_mm) {
  local_irq_save(flags);
  __nds32__mtsr_dsb(addr, NDS32_SR_TLB_VPN);
  __nds32__tlbop_rwr(*pte);
  __nds32__isb();
  local_irq_restore(flags);
 }
 page = pfn_to_page(pfn);

 if ((test_and_clear_bit(PG_dcache_dirty, &page->flags)) ||
     (vma->vm_flags & VM_EXEC)) {
  unsigned long kaddr;
  local_irq_save(flags);
  kaddr = (unsigned long)kmap_atomic(page);
  cpu_cache_wbinval_page(kaddr, vma->vm_flags & VM_EXEC);
  kunmap_atomic((void *)kaddr);
  local_irq_restore(flags);
 }
}
