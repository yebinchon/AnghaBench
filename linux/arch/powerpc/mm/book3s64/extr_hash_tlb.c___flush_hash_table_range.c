
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int pgd; } ;
typedef int pte_t ;
typedef int pmd_t ;


 int BUG_ON (int) ;
 unsigned long H_PAGE_HASHPTE ;
 scalar_t__ PAGE_SIZE ;
 unsigned long _ALIGN_DOWN (unsigned long,scalar_t__) ;
 unsigned long _ALIGN_UP (unsigned long,scalar_t__) ;
 int arch_enter_lazy_mmu_mode () ;
 int arch_leave_lazy_mmu_mode () ;
 int * find_current_mm_pte (int ,unsigned long,int*,int*) ;
 int hpte_do_hugepage_flush (struct mm_struct*,unsigned long,int *,unsigned long) ;
 int hpte_need_flush (struct mm_struct*,unsigned long,int *,unsigned long,int) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 unsigned long pte_val (int ) ;
 int trace_hugepage_invalidate (unsigned long,unsigned long) ;
 scalar_t__ unlikely (int) ;

void __flush_hash_table_range(struct mm_struct *mm, unsigned long start,
         unsigned long end)
{
 bool is_thp;
 int hugepage_shift;
 unsigned long flags;

 start = _ALIGN_DOWN(start, PAGE_SIZE);
 end = _ALIGN_UP(end, PAGE_SIZE);

 BUG_ON(!mm->pgd);
 local_irq_save(flags);
 arch_enter_lazy_mmu_mode();
 for (; start < end; start += PAGE_SIZE) {
  pte_t *ptep = find_current_mm_pte(mm->pgd, start, &is_thp,
        &hugepage_shift);
  unsigned long pte;

  if (ptep == ((void*)0))
   continue;
  pte = pte_val(*ptep);
  if (is_thp)
   trace_hugepage_invalidate(start, pte);
  if (!(pte & H_PAGE_HASHPTE))
   continue;
  if (unlikely(is_thp))
   hpte_do_hugepage_flush(mm, start, (pmd_t *)ptep, pte);
  else
   hpte_need_flush(mm, start, ptep, pte, hugepage_shift);
 }
 arch_leave_lazy_mmu_mode();
 local_irq_restore(flags);
}
