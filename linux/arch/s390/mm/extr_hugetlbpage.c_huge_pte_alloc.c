
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgd_t ;
typedef int p4d_t ;


 unsigned long PMD_SIZE ;
 unsigned long PUD_SIZE ;
 int * p4d_alloc (struct mm_struct*,int *,unsigned long) ;
 int * pgd_offset (struct mm_struct*,unsigned long) ;
 int * pmd_alloc (struct mm_struct*,int *,unsigned long) ;
 int * pud_alloc (struct mm_struct*,int *,unsigned long) ;

pte_t *huge_pte_alloc(struct mm_struct *mm,
   unsigned long addr, unsigned long sz)
{
 pgd_t *pgdp;
 p4d_t *p4dp;
 pud_t *pudp;
 pmd_t *pmdp = ((void*)0);

 pgdp = pgd_offset(mm, addr);
 p4dp = p4d_alloc(mm, pgdp, addr);
 if (p4dp) {
  pudp = pud_alloc(mm, p4dp, addr);
  if (pudp) {
   if (sz == PUD_SIZE)
    return (pte_t *) pudp;
   else if (sz == PMD_SIZE)
    pmdp = pmd_alloc(mm, pudp, addr);
  }
 }
 return (pte_t *) pmdp;
}
