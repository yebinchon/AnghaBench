
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vm_area_struct {int vm_flags; int vm_end; int vm_start; struct vm_area_struct* vm_next; } ;
struct TYPE_3__ {int uses_skeys; } ;
struct mm_struct {int mmap_sem; int def_flags; TYPE_1__ context; struct vm_area_struct* mmap; } ;
struct TYPE_4__ {struct mm_struct* mm; } ;


 int ENOMEM ;
 int MADV_UNMERGEABLE ;
 int TASK_SIZE ;
 int VM_MERGEABLE ;
 TYPE_2__* current ;
 int down_write (int *) ;
 int enable_skey_walk_ops ;
 scalar_t__ ksm_madvise (struct vm_area_struct*,int ,int ,int ,int *) ;
 scalar_t__ mm_uses_skeys (struct mm_struct*) ;
 int up_write (int *) ;
 int walk_page_range (struct mm_struct*,int ,int ,int *,int *) ;

int s390_enable_skey(void)
{
 struct mm_struct *mm = current->mm;
 struct vm_area_struct *vma;
 int rc = 0;

 down_write(&mm->mmap_sem);
 if (mm_uses_skeys(mm))
  goto out_up;

 mm->context.uses_skeys = 1;
 for (vma = mm->mmap; vma; vma = vma->vm_next) {
  if (ksm_madvise(vma, vma->vm_start, vma->vm_end,
    MADV_UNMERGEABLE, &vma->vm_flags)) {
   mm->context.uses_skeys = 0;
   rc = -ENOMEM;
   goto out_up;
  }
 }
 mm->def_flags &= ~VM_MERGEABLE;

 walk_page_range(mm, 0, TASK_SIZE, &enable_skey_walk_ops, ((void*)0));

out_up:
 up_write(&mm->mmap_sem);
 return rc;
}
