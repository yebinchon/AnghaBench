
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int page_table_lock; } ;
typedef int spinlock_t ;
typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgd_t ;
typedef int hugepd_t ;


 int BUG_ON (int) ;
 unsigned int PGDIR_SHIFT ;
 unsigned int PMD_SHIFT ;
 unsigned int PUD_SHIFT ;
 unsigned int __ffs (unsigned long) ;
 scalar_t__ __hugepte_alloc (struct mm_struct*,int *,unsigned long,unsigned int,unsigned int,int *) ;
 scalar_t__ hugepd_none (int ) ;
 int hugepd_ok (int ) ;
 int * hugepte_offset (int ,unsigned long,unsigned int) ;
 int * pgd_offset (struct mm_struct*,unsigned long) ;
 int * pmd_alloc (struct mm_struct*,int *,unsigned long) ;
 int * pmd_lockptr (struct mm_struct*,int *) ;
 int * pud_alloc (struct mm_struct*,int *,unsigned long) ;
 int * pud_lockptr (struct mm_struct*,int *) ;

pte_t *huge_pte_alloc(struct mm_struct *mm, unsigned long addr, unsigned long sz)
{
 pgd_t *pg;
 pud_t *pu;
 pmd_t *pm;
 hugepd_t *hpdp = ((void*)0);
 unsigned pshift = __ffs(sz);
 unsigned pdshift = PGDIR_SHIFT;
 spinlock_t *ptl;

 addr &= ~(sz-1);
 pg = pgd_offset(mm, addr);
 if (pshift >= PGDIR_SHIFT) {
  ptl = &mm->page_table_lock;
  hpdp = (hugepd_t *)pg;
 } else {
  pdshift = PUD_SHIFT;
  pu = pud_alloc(mm, pg, addr);
  if (!pu)
   return ((void*)0);
  if (pshift >= PUD_SHIFT) {
   ptl = pud_lockptr(mm, pu);
   hpdp = (hugepd_t *)pu;
  } else {
   pdshift = PMD_SHIFT;
   pm = pmd_alloc(mm, pu, addr);
   if (!pm)
    return ((void*)0);
   ptl = pmd_lockptr(mm, pm);
   hpdp = (hugepd_t *)pm;
  }
 }

 if (!hpdp)
  return ((void*)0);

 BUG_ON(!hugepd_none(*hpdp) && !hugepd_ok(*hpdp));

 if (hugepd_none(*hpdp) && __hugepte_alloc(mm, hpdp, addr,
        pdshift, pshift, ptl))
  return ((void*)0);

 return hugepte_offset(*hpdp, addr, pdshift);
}
