
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {scalar_t__ vm_start; scalar_t__ vm_end; struct vm_area_struct* vm_next; } ;
struct mm_struct {struct vm_area_struct* mmap; } ;



__attribute__((used)) static inline unsigned long mm_total_size(struct mm_struct *mm)
{
 struct vm_area_struct *vma;
 unsigned long usize = 0;

 for (vma = mm->mmap; vma; vma = vma->vm_next)
  usize += vma->vm_end - vma->vm_start;
 return usize;
}
