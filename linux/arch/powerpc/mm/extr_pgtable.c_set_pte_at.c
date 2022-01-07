
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pte_t ;


 int VM_WARN_ON (int) ;
 int __set_pte_at (struct mm_struct*,unsigned long,int *,int ,int ) ;
 scalar_t__ pte_hw_valid (int ) ;
 int pte_mkpte (int ) ;
 int pte_protnone (int ) ;
 int set_pte_filter (int ) ;

void set_pte_at(struct mm_struct *mm, unsigned long addr, pte_t *ptep,
  pte_t pte)
{




 VM_WARN_ON(pte_hw_valid(*ptep) && !pte_protnone(*ptep));


 pte = pte_mkpte(pte);





 pte = set_pte_filter(pte);


 __set_pte_at(mm, addr, ptep, pte, 0);
}
