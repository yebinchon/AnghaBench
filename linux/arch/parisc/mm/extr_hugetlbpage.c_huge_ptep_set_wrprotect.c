
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int pgd; } ;
typedef int pte_t ;


 int __set_huge_pte_at (struct mm_struct*,unsigned long,int *,int ) ;
 int pgd_spinlock (int ) ;
 int pte_wrprotect (int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

void huge_ptep_set_wrprotect(struct mm_struct *mm,
    unsigned long addr, pte_t *ptep)
{
 unsigned long flags;
 pte_t old_pte;

 spin_lock_irqsave(pgd_spinlock((mm)->pgd), flags);
 old_pte = *ptep;
 __set_huge_pte_at(mm, addr, ptep, pte_wrprotect(old_pte));
 spin_unlock_irqrestore(pgd_spinlock((mm)->pgd), flags);
}
