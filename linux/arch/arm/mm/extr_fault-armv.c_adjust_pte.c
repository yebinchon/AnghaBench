
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_mm; } ;
typedef int spinlock_t ;
typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgd_t ;


 int do_adjust_pte (struct vm_area_struct*,unsigned long,unsigned long,int *) ;
 int do_pte_lock (int *) ;
 int do_pte_unlock (int *) ;
 scalar_t__ pgd_none_or_clear_bad (int *) ;
 int * pgd_offset (int ,unsigned long) ;
 scalar_t__ pmd_none_or_clear_bad (int *) ;
 int * pmd_offset (int *,unsigned long) ;
 int * pte_lockptr (int ,int *) ;
 int * pte_offset_map (int *,unsigned long) ;
 int pte_unmap (int *) ;
 scalar_t__ pud_none_or_clear_bad (int *) ;
 int * pud_offset (int *,unsigned long) ;

__attribute__((used)) static int adjust_pte(struct vm_area_struct *vma, unsigned long address,
 unsigned long pfn)
{
 spinlock_t *ptl;
 pgd_t *pgd;
 pud_t *pud;
 pmd_t *pmd;
 pte_t *pte;
 int ret;

 pgd = pgd_offset(vma->vm_mm, address);
 if (pgd_none_or_clear_bad(pgd))
  return 0;

 pud = pud_offset(pgd, address);
 if (pud_none_or_clear_bad(pud))
  return 0;

 pmd = pmd_offset(pud, address);
 if (pmd_none_or_clear_bad(pmd))
  return 0;






 ptl = pte_lockptr(vma->vm_mm, pmd);
 pte = pte_offset_map(pmd, address);
 do_pte_lock(ptl);

 ret = do_adjust_pte(vma, address, pfn, pte);

 do_pte_unlock(ptl);
 pte_unmap(pte);

 return ret;
}
