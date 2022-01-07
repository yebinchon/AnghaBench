
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {struct mm_struct* vm_mm; } ;
struct mm_struct {int pgd; } ;
typedef int pte_t ;


 int __set_huge_pte_at (struct mm_struct*,unsigned long,int *,int ) ;
 int pgd_spinlock (int ) ;
 int pte_same (int ,int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

int huge_ptep_set_access_flags(struct vm_area_struct *vma,
    unsigned long addr, pte_t *ptep,
    pte_t pte, int dirty)
{
 unsigned long flags;
 int changed;
 struct mm_struct *mm = vma->vm_mm;

 spin_lock_irqsave(pgd_spinlock((mm)->pgd), flags);
 changed = !pte_same(*ptep, pte);
 if (changed) {
  __set_huge_pte_at(mm, addr, ptep, pte);
 }
 spin_unlock_irqrestore(pgd_spinlock((mm)->pgd), flags);
 return changed;
}
