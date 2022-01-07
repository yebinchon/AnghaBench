
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_mm; } ;
typedef int pte_t ;


 int trace_xen_mmu_ptep_modify_prot_start (int ,unsigned long,int *,int ) ;

pte_t xen_ptep_modify_prot_start(struct vm_area_struct *vma,
     unsigned long addr, pte_t *ptep)
{

 trace_xen_mmu_ptep_modify_prot_start(vma->vm_mm, addr, ptep, *ptep);
 return *ptep;
}
