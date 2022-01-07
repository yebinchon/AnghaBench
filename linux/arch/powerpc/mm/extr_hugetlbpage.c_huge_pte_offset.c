
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int pgd; } ;
typedef int pte_t ;


 int * __find_linux_pte (int ,unsigned long,int *,int *) ;

pte_t *huge_pte_offset(struct mm_struct *mm, unsigned long addr, unsigned long sz)
{




 return __find_linux_pte(mm->pgd, addr, ((void*)0), ((void*)0));
}
