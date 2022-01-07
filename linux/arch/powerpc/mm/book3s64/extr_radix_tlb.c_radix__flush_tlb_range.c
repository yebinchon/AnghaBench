
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_mm; } ;


 int __radix__flush_tlb_range (int ,unsigned long,unsigned long,int) ;
 scalar_t__ is_vm_hugetlb_page (struct vm_area_struct*) ;
 void radix__flush_hugetlb_tlb_range (struct vm_area_struct*,unsigned long,unsigned long) ;

void radix__flush_tlb_range(struct vm_area_struct *vma, unsigned long start,
       unsigned long end)

{





 __radix__flush_tlb_range(vma->vm_mm, start, end, 0);
}
