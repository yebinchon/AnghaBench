
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int pgd; } ;
typedef int pte_t ;


 int __pte (int ) ;
 int __set_huge_pte_at (struct mm_struct*,unsigned long,int *,int ) ;
 int pgd_spinlock (int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

pte_t huge_ptep_get_and_clear(struct mm_struct *mm, unsigned long addr,
         pte_t *ptep)
{
 unsigned long flags;
 pte_t entry;

 spin_lock_irqsave(pgd_spinlock((mm)->pgd), flags);
 entry = *ptep;
 __set_huge_pte_at(mm, addr, ptep, __pte(0));
 spin_unlock_irqrestore(pgd_spinlock((mm)->pgd), flags);

 return entry;
}
