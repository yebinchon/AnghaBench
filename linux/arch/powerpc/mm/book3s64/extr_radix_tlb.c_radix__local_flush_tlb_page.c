
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_mm; } ;


 scalar_t__ is_vm_hugetlb_page (struct vm_area_struct*) ;
 int mmu_virtual_psize ;
 void radix__local_flush_hugetlb_page (struct vm_area_struct*,unsigned long) ;
 int radix__local_flush_tlb_page_psize (int ,unsigned long,int ) ;

void radix__local_flush_tlb_page(struct vm_area_struct *vma, unsigned long vmaddr)
{





 radix__local_flush_tlb_page_psize(vma->vm_mm, vmaddr, mmu_virtual_psize);
}
