
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgd_t ;


 int CONFIG_ARCH_WANT_HUGE_PMD_SHARE ;
 unsigned long CONT_PMD_SIZE ;
 unsigned long CONT_PTE_SIZE ;
 scalar_t__ IS_ENABLED (int ) ;
 unsigned long PMD_SIZE ;
 unsigned long PUD_SIZE ;
 int READ_ONCE (int ) ;
 int WARN_ON (unsigned long) ;
 int * huge_pmd_share (struct mm_struct*,unsigned long,int *) ;
 int * pgd_offset (struct mm_struct*,unsigned long) ;
 int * pmd_alloc (struct mm_struct*,int *,unsigned long) ;
 int * pte_alloc_map (struct mm_struct*,int *,unsigned long) ;
 int * pud_alloc (struct mm_struct*,int *,unsigned long) ;
 scalar_t__ pud_none (int ) ;

pte_t *huge_pte_alloc(struct mm_struct *mm,
        unsigned long addr, unsigned long sz)
{
 pgd_t *pgdp;
 pud_t *pudp;
 pmd_t *pmdp;
 pte_t *ptep = ((void*)0);

 pgdp = pgd_offset(mm, addr);
 pudp = pud_alloc(mm, pgdp, addr);
 if (!pudp)
  return ((void*)0);

 if (sz == PUD_SIZE) {
  ptep = (pte_t *)pudp;
 } else if (sz == (CONT_PTE_SIZE)) {
  pmdp = pmd_alloc(mm, pudp, addr);

  WARN_ON(addr & (sz - 1));







  ptep = pte_alloc_map(mm, pmdp, addr);
 } else if (sz == PMD_SIZE) {
  if (IS_ENABLED(CONFIG_ARCH_WANT_HUGE_PMD_SHARE) &&
      pud_none(READ_ONCE(*pudp)))
   ptep = huge_pmd_share(mm, addr, pudp);
  else
   ptep = (pte_t *)pmd_alloc(mm, pudp, addr);
 } else if (sz == (CONT_PMD_SIZE)) {
  pmdp = pmd_alloc(mm, pudp, addr);
  WARN_ON(addr & (sz - 1));
  return (pte_t *)pmdp;
 }

 return ptep;
}
