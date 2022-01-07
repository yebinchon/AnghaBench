
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {struct mm_struct* vm_mm; } ;
struct TYPE_2__ {int copros; } ;
struct mm_struct {TYPE_1__ context; } ;
typedef int pte_t ;


 scalar_t__ atomic_read (int *) ;
 scalar_t__ is_pte_rw_upgrade (int ,int ) ;
 int pte_val (int ) ;
 int radix__flush_hugetlb_page (struct vm_area_struct*,unsigned long) ;
 int set_huge_pte_at (struct mm_struct*,unsigned long,int *,int ) ;

void radix__huge_ptep_modify_prot_commit(struct vm_area_struct *vma,
      unsigned long addr, pte_t *ptep,
      pte_t old_pte, pte_t pte)
{
 struct mm_struct *mm = vma->vm_mm;





 if (is_pte_rw_upgrade(pte_val(old_pte), pte_val(pte)) &&
     (atomic_read(&mm->context.copros) > 0))
  radix__flush_hugetlb_page(vma, addr);

 set_huge_pte_at(vma->vm_mm, addr, ptep, pte);
}
