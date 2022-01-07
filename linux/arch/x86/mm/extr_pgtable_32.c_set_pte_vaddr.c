
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgd_t ;
typedef int p4d_t ;


 int BUG () ;
 int __flush_tlb_one_kernel (unsigned long) ;
 int init_mm ;
 scalar_t__ p4d_none (int ) ;
 int * p4d_offset (int *,unsigned long) ;
 int pgd_index (unsigned long) ;
 scalar_t__ pgd_none (int ) ;
 scalar_t__ pmd_none (int ) ;
 int * pmd_offset (int *,unsigned long) ;
 int pte_clear (int *,unsigned long,int *) ;
 int pte_none (int ) ;
 int * pte_offset_kernel (int *,unsigned long) ;
 scalar_t__ pud_none (int ) ;
 int * pud_offset (int *,unsigned long) ;
 int set_pte_at (int *,unsigned long,int *,int ) ;
 int * swapper_pg_dir ;

void set_pte_vaddr(unsigned long vaddr, pte_t pteval)
{
 pgd_t *pgd;
 p4d_t *p4d;
 pud_t *pud;
 pmd_t *pmd;
 pte_t *pte;

 pgd = swapper_pg_dir + pgd_index(vaddr);
 if (pgd_none(*pgd)) {
  BUG();
  return;
 }
 p4d = p4d_offset(pgd, vaddr);
 if (p4d_none(*p4d)) {
  BUG();
  return;
 }
 pud = pud_offset(p4d, vaddr);
 if (pud_none(*pud)) {
  BUG();
  return;
 }
 pmd = pmd_offset(pud, vaddr);
 if (pmd_none(*pmd)) {
  BUG();
  return;
 }
 pte = pte_offset_kernel(pmd, vaddr);
 if (!pte_none(pteval))
  set_pte_at(&init_mm, vaddr, pte, pteval);
 else
  pte_clear(&init_mm, vaddr, pte);





 __flush_tlb_one_kernel(vaddr);
}
