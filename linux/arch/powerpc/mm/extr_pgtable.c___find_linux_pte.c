
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgd_t ;
typedef int hugepd_t ;


 unsigned int PGDIR_SHIFT ;
 unsigned int PMD_SHIFT ;
 unsigned int PUD_SHIFT ;
 int READ_ONCE (int ) ;
 int __hugepd (int ) ;
 unsigned int hugepd_shift (int ) ;
 int * hugepte_offset (int ,unsigned long,unsigned int) ;
 scalar_t__ is_hugepd (int ) ;
 int pgd_index (unsigned long) ;
 scalar_t__ pgd_is_leaf (int ) ;
 scalar_t__ pgd_none (int ) ;
 int pgd_val (int ) ;
 scalar_t__ pmd_devmap (int ) ;
 scalar_t__ pmd_is_leaf (int ) ;
 scalar_t__ pmd_is_serializing (int ) ;
 scalar_t__ pmd_none (int ) ;
 int * pmd_offset (int *,unsigned long) ;
 scalar_t__ pmd_trans_huge (int ) ;
 int pmd_val (int ) ;
 int * pte_offset_kernel (int *,unsigned long) ;
 scalar_t__ pud_is_leaf (int ) ;
 scalar_t__ pud_none (int ) ;
 int * pud_offset (int *,unsigned long) ;
 int pud_val (int ) ;

pte_t *__find_linux_pte(pgd_t *pgdir, unsigned long ea,
   bool *is_thp, unsigned *hpage_shift)
{
 pgd_t pgd, *pgdp;
 pud_t pud, *pudp;
 pmd_t pmd, *pmdp;
 pte_t *ret_pte;
 hugepd_t *hpdp = ((void*)0);
 unsigned pdshift = PGDIR_SHIFT;

 if (hpage_shift)
  *hpage_shift = 0;

 if (is_thp)
  *is_thp = 0;

 pgdp = pgdir + pgd_index(ea);
 pgd = READ_ONCE(*pgdp);






 if (pgd_none(pgd))
  return ((void*)0);

 if (pgd_is_leaf(pgd)) {
  ret_pte = (pte_t *)pgdp;
  goto out;
 }

 if (is_hugepd(__hugepd(pgd_val(pgd)))) {
  hpdp = (hugepd_t *)&pgd;
  goto out_huge;
 }






 pdshift = PUD_SHIFT;
 pudp = pud_offset(&pgd, ea);
 pud = READ_ONCE(*pudp);

 if (pud_none(pud))
  return ((void*)0);

 if (pud_is_leaf(pud)) {
  ret_pte = (pte_t *)pudp;
  goto out;
 }

 if (is_hugepd(__hugepd(pud_val(pud)))) {
  hpdp = (hugepd_t *)&pud;
  goto out_huge;
 }

 pdshift = PMD_SHIFT;
 pmdp = pmd_offset(&pud, ea);
 pmd = READ_ONCE(*pmdp);





 if (pmd_none(pmd))
  return ((void*)0);
 if (pmd_trans_huge(pmd) || pmd_devmap(pmd)) {
  if (is_thp)
   *is_thp = 1;
  ret_pte = (pte_t *)pmdp;
  goto out;
 }

 if (pmd_is_leaf(pmd)) {
  ret_pte = (pte_t *)pmdp;
  goto out;
 }

 if (is_hugepd(__hugepd(pmd_val(pmd)))) {
  hpdp = (hugepd_t *)&pmd;
  goto out_huge;
 }

 return pte_offset_kernel(&pmd, ea);

out_huge:
 if (!hpdp)
  return ((void*)0);

 ret_pte = hugepte_offset(*hpdp, ea, pdshift);
 pdshift = hugepd_shift(*hpdp);
out:
 if (hpage_shift)
  *hpage_shift = pdshift;
 return ret_pte;
}
