
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int pgd; } ;
typedef int pte_t ;


 int __set_huge_pte_at (struct mm_struct*,unsigned long,int *,int ) ;
 int pgd_spinlock (int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

void set_huge_pte_at(struct mm_struct *mm, unsigned long addr,
       pte_t *ptep, pte_t entry)
{
 unsigned long flags;

 spin_lock_irqsave(pgd_spinlock((mm)->pgd), flags);
 __set_huge_pte_at(mm, addr, ptep, entry);
 spin_unlock_irqrestore(pgd_spinlock((mm)->pgd), flags);
}
