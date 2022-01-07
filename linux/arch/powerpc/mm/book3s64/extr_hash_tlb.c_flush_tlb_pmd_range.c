
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pte_t ;
typedef int pmd_t ;


 unsigned long H_PAGE_HASHPTE ;
 scalar_t__ PAGE_SIZE ;
 int PMD_SIZE ;
 int PTRS_PER_PTE ;
 unsigned long _ALIGN_DOWN (unsigned long,int ) ;
 int arch_enter_lazy_mmu_mode () ;
 int arch_leave_lazy_mmu_mode () ;
 int hpte_need_flush (struct mm_struct*,unsigned long,int *,unsigned long,int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int * pte_offset_map (int *,unsigned long) ;
 unsigned long pte_val (int ) ;

void flush_tlb_pmd_range(struct mm_struct *mm, pmd_t *pmd, unsigned long addr)
{
 pte_t *pte;
 pte_t *start_pte;
 unsigned long flags;

 addr = _ALIGN_DOWN(addr, PMD_SIZE);
 local_irq_save(flags);
 arch_enter_lazy_mmu_mode();
 start_pte = pte_offset_map(pmd, addr);
 for (pte = start_pte; pte < start_pte + PTRS_PER_PTE; pte++) {
  unsigned long pteval = pte_val(*pte);
  if (pteval & H_PAGE_HASHPTE)
   hpte_need_flush(mm, addr, pte, pteval, 0);
  addr += PAGE_SIZE;
 }
 arch_leave_lazy_mmu_mode();
 local_irq_restore(flags);
}
