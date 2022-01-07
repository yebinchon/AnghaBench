
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;


 int _REGION3_ENTRY_EMPTY ;
 int _REGION_ENTRY_TYPE_MASK ;
 int _REGION_ENTRY_TYPE_R3 ;
 int _SEGMENT_ENTRY_EMPTY ;
 int __pmd (int ) ;
 int __pud (int ) ;
 int huge_ptep_get (int *) ;
 int pmdp_xchg_direct (struct mm_struct*,unsigned long,int *,int ) ;
 int pte_val (int ) ;
 int pudp_xchg_direct (struct mm_struct*,unsigned long,int *,int ) ;

pte_t huge_ptep_get_and_clear(struct mm_struct *mm,
         unsigned long addr, pte_t *ptep)
{
 pte_t pte = huge_ptep_get(ptep);
 pmd_t *pmdp = (pmd_t *) ptep;
 pud_t *pudp = (pud_t *) ptep;

 if ((pte_val(*ptep) & _REGION_ENTRY_TYPE_MASK) == _REGION_ENTRY_TYPE_R3)
  pudp_xchg_direct(mm, addr, pudp, __pud(_REGION3_ENTRY_EMPTY));
 else
  pmdp_xchg_direct(mm, addr, pmdp, __pmd(_SEGMENT_ENTRY_EMPTY));
 return pte;
}
