
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
typedef int pte_t ;


 int book3e_hugetlb_preload (struct vm_area_struct*,unsigned long,int ) ;
 scalar_t__ is_vm_hugetlb_page (struct vm_area_struct*) ;

void update_mmu_cache(struct vm_area_struct *vma, unsigned long address, pte_t *ptep)
{
 if (is_vm_hugetlb_page(vma))
  book3e_hugetlb_preload(vma, address, *ptep);
}
