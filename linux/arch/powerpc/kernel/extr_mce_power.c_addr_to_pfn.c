
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct mm_struct {int pgd; } ;
typedef int pte_t ;
struct TYPE_2__ {struct mm_struct* mm; } ;


 unsigned int PAGE_SHIFT ;
 unsigned long PAGE_SIZE ;
 unsigned long ULONG_MAX ;
 int * __find_linux_pte (int ,unsigned long,int *,unsigned int*) ;
 int __pte (unsigned long) ;
 TYPE_1__* current ;
 struct mm_struct init_mm ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 unsigned long pte_pfn (int ) ;
 scalar_t__ pte_special (int ) ;
 unsigned long pte_val (int ) ;
 scalar_t__ user_mode (struct pt_regs*) ;

unsigned long addr_to_pfn(struct pt_regs *regs, unsigned long addr)
{
 pte_t *ptep;
 unsigned int shift;
 unsigned long pfn, flags;
 struct mm_struct *mm;

 if (user_mode(regs))
  mm = current->mm;
 else
  mm = &init_mm;

 local_irq_save(flags);
 ptep = __find_linux_pte(mm->pgd, addr, ((void*)0), &shift);

 if (!ptep || pte_special(*ptep)) {
  pfn = ULONG_MAX;
  goto out;
 }

 if (shift <= PAGE_SHIFT)
  pfn = pte_pfn(*ptep);
 else {
  unsigned long rpnmask = (1ul << shift) - PAGE_SIZE;
  pfn = pte_pfn(__pte(pte_val(*ptep) | (addr & rpnmask)));
 }

out:
 local_irq_restore(flags);
 return pfn;
}
