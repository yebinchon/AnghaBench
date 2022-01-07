
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_end; int vm_start; int vm_mm; struct vm_area_struct* vm_next; } ;
struct mm_struct {struct vm_area_struct* mmap; } ;


 int Hash ;
 int _tlbia () ;
 int flush_range (int ,int ,int ) ;

void flush_tlb_mm(struct mm_struct *mm)
{
 struct vm_area_struct *mp;

 if (!Hash) {
  _tlbia();
  return;
 }







 for (mp = mm->mmap; mp != ((void*)0); mp = mp->vm_next)
  flush_range(mp->vm_mm, mp->vm_start, mp->vm_end);
}
