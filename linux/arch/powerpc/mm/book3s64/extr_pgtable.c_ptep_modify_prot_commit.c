
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_mm; } ;
typedef int pte_t ;


 void radix__ptep_modify_prot_commit (struct vm_area_struct*,unsigned long,int *,int ,int ) ;
 scalar_t__ radix_enabled () ;
 int set_pte_at (int ,unsigned long,int *,int ) ;

void ptep_modify_prot_commit(struct vm_area_struct *vma, unsigned long addr,
        pte_t *ptep, pte_t old_pte, pte_t pte)
{
 if (radix_enabled())
  return radix__ptep_modify_prot_commit(vma, addr,
            ptep, old_pte, pte);
 set_pte_at(vma->vm_mm, addr, ptep, pte);
}
