
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgd_t ;


 unsigned long PGDIR_SHIFT ;
 int PMD_SHIFT ;
 int PTRS_PER_PMD ;
 int PTRS_PER_PUD ;
 unsigned long PUD_SHIFT ;
 int USER_PTRS_PER_PGD ;
 int pgd_free (int *,int *) ;
 scalar_t__ pgd_none (int ) ;
 int pmd_free (int *,int *) ;
 scalar_t__ pmd_none (int ) ;
 int * pmd_offset (int *,int ) ;
 int pte_free_kernel (int *,int *) ;
 int * pte_offset (int *,int ) ;
 int pud_free (int *,int *) ;
 scalar_t__ pud_none (int ) ;
 int * pud_offset (int *,int ) ;

__attribute__((used)) static void kvm_mips_emul_free_gva_pt(pgd_t *pgd)
{

 const unsigned long end = 0x80000000;
 unsigned long pgd_va, pud_va, pmd_va;
 pud_t *pud;
 pmd_t *pmd;
 pte_t *pte;
 int i, j, k;

 for (i = 0; i < USER_PTRS_PER_PGD; i++) {
  if (pgd_none(pgd[i]))
   continue;

  pgd_va = (unsigned long)i << PGDIR_SHIFT;
  if (pgd_va >= end)
   break;
  pud = pud_offset(pgd + i, 0);
  for (j = 0; j < PTRS_PER_PUD; j++) {
   if (pud_none(pud[j]))
    continue;

   pud_va = pgd_va | ((unsigned long)j << PUD_SHIFT);
   if (pud_va >= end)
    break;
   pmd = pmd_offset(pud + j, 0);
   for (k = 0; k < PTRS_PER_PMD; k++) {
    if (pmd_none(pmd[k]))
     continue;

    pmd_va = pud_va | (k << PMD_SHIFT);
    if (pmd_va >= end)
     break;
    pte = pte_offset(pmd + k, 0);
    pte_free_kernel(((void*)0), pte);
   }
   pmd_free(((void*)0), pmd);
  }
  pud_free(((void*)0), pud);
 }
 pgd_free(((void*)0), pgd);
}
