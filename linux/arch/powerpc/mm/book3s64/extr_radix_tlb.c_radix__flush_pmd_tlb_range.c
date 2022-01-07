
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_mm; } ;


 int MMU_PAGE_2M ;
 int radix__flush_tlb_range_psize (int ,unsigned long,unsigned long,int ) ;

void radix__flush_pmd_tlb_range(struct vm_area_struct *vma,
    unsigned long start, unsigned long end)
{
 radix__flush_tlb_range_psize(vma->vm_mm, start, end, MMU_PAGE_2M);
}
