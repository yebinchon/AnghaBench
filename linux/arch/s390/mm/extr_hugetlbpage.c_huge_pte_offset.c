
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


 int * p4d_offset (int *,unsigned long) ;
 scalar_t__ p4d_present (int ) ;
 int * pgd_offset (struct mm_struct*,unsigned long) ;
 scalar_t__ pgd_present (int ) ;
 int * pmd_offset (int *,unsigned long) ;
 scalar_t__ pud_large (int ) ;
 int * pud_offset (int *,unsigned long) ;
 scalar_t__ pud_present (int ) ;

pte_t *huge_pte_offset(struct mm_struct *mm,
         unsigned long addr, unsigned long sz)
{
 pgd_t *pgdp;
 p4d_t *p4dp;
 pud_t *pudp;
 pmd_t *pmdp = ((void*)0);

 pgdp = pgd_offset(mm, addr);
 if (pgd_present(*pgdp)) {
  p4dp = p4d_offset(pgdp, addr);
  if (p4d_present(*p4dp)) {
   pudp = pud_offset(p4dp, addr);
   if (pud_present(*pudp)) {
    if (pud_large(*pudp))
     return (pte_t *) pudp;
    pmdp = pmd_offset(pudp, addr);
   }
  }
 }
 return (pte_t *) pmdp;
}
