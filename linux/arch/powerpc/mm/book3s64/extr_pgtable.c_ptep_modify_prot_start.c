
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_mm; } ;
typedef int pte_t ;


 int _PAGE_INVALID ;
 int _PAGE_PRESENT ;
 int __pte (unsigned long) ;
 unsigned long pte_update (int ,unsigned long,int *,int ,int ,int ) ;

pte_t ptep_modify_prot_start(struct vm_area_struct *vma, unsigned long addr,
        pte_t *ptep)
{
 unsigned long pte_val;






 pte_val = pte_update(vma->vm_mm, addr, ptep, _PAGE_PRESENT, _PAGE_INVALID, 0);

 return __pte(pte_val);

}
