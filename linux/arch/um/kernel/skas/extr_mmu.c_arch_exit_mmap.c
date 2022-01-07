
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pte_t ;


 int STUB_CODE ;
 int STUB_DATA ;
 int pte_clear (struct mm_struct*,int ,int *) ;
 int * virt_to_pte (struct mm_struct*,int ) ;

void arch_exit_mmap(struct mm_struct *mm)
{
 pte_t *pte;

 pte = virt_to_pte(mm, STUB_CODE);
 if (pte != ((void*)0))
  pte_clear(mm, STUB_CODE, pte);

 pte = virt_to_pte(mm, STUB_DATA);
 if (pte == ((void*)0))
  return;

 pte_clear(mm, STUB_DATA, pte);
}
