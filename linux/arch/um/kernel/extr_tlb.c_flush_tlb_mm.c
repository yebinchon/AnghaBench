
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {struct vm_area_struct* vm_next; int vm_end; int vm_start; } ;
struct mm_struct {struct vm_area_struct* mmap; } ;


 int fix_range (struct mm_struct*,int ,int ,int ) ;

void flush_tlb_mm(struct mm_struct *mm)
{
 struct vm_area_struct *vma = mm->mmap;

 while (vma != ((void*)0)) {
  fix_range(mm, vma->vm_start, vma->vm_end, 0);
  vma = vma->vm_next;
 }
}
