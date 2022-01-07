
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_mm; } ;


 int flush_range (int ,unsigned long,unsigned long) ;

void flush_tlb_range(struct vm_area_struct *vma, unsigned long start,
       unsigned long end)
{
 flush_range(vma->vm_mm, start, end);
}
