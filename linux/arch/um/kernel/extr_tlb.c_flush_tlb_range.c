
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int * vm_mm; } ;


 int fix_range (int *,unsigned long,unsigned long,int ) ;
 int flush_tlb_kernel_range_common (unsigned long,unsigned long) ;

void flush_tlb_range(struct vm_area_struct *vma, unsigned long start,
       unsigned long end)
{
 if (vma->vm_mm == ((void*)0))
  flush_tlb_kernel_range_common(start, end);
 else fix_range(vma->vm_mm, start, end, 0);
}
