
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int spinlock_t ;
typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgd_t ;


 unsigned long PAGE_MASK ;
 scalar_t__ PAGE_SIZE ;
 scalar_t__ pgd_bad (int ) ;
 int * pgd_offset (struct mm_struct*,unsigned long) ;
 scalar_t__ pmd_bad (int ) ;
 scalar_t__ pmd_none (int ) ;
 int * pmd_offset (int *,unsigned long) ;
 scalar_t__ pte_none (int ) ;
 int * pte_offset_map_lock (struct mm_struct*,int *,unsigned long,int **) ;
 int pte_present (int ) ;
 int pte_unmap_unlock (int *,int *) ;
 unsigned long pte_val (int ) ;
 scalar_t__ pud_bad (int ) ;
 scalar_t__ pud_none (int ) ;
 int * pud_offset (int *,unsigned long) ;
 int sh64_dcache_purge_coloured_phy_page (unsigned long,unsigned long) ;

__attribute__((used)) static void sh64_dcache_purge_user_pages(struct mm_struct *mm,
    unsigned long addr, unsigned long end)
{
 pgd_t *pgd;
 pud_t *pud;
 pmd_t *pmd;
 pte_t *pte;
 pte_t entry;
 spinlock_t *ptl;
 unsigned long paddr;

 if (!mm)
  return;

 pgd = pgd_offset(mm, addr);
 if (pgd_bad(*pgd))
  return;

 pud = pud_offset(pgd, addr);
 if (pud_none(*pud) || pud_bad(*pud))
  return;

 pmd = pmd_offset(pud, addr);
 if (pmd_none(*pmd) || pmd_bad(*pmd))
  return;

 pte = pte_offset_map_lock(mm, pmd, addr, &ptl);
 do {
  entry = *pte;
  if (pte_none(entry) || !pte_present(entry))
   continue;
  paddr = pte_val(entry) & PAGE_MASK;
  sh64_dcache_purge_coloured_phy_page(paddr, addr);
 } while (pte++, addr += PAGE_SIZE, addr != end);
 pte_unmap_unlock(pte - 1, ptl);
}
