
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mm_struct {int mmap_sem; } ;
struct linux_binprm {int dummy; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;


 int ARM64_VDSO ;
 int EINTR ;
 int __setup_additional_pages (int ,struct mm_struct*,struct linux_binprm*,int) ;
 TYPE_1__* current ;
 scalar_t__ down_write_killable (int *) ;
 int up_write (int *) ;

int arch_setup_additional_pages(struct linux_binprm *bprm,
    int uses_interp)
{
 struct mm_struct *mm = current->mm;
 int ret;

 if (down_write_killable(&mm->mmap_sem))
  return -EINTR;

 ret = __setup_additional_pages(ARM64_VDSO,
           mm,
           bprm,
           uses_interp);

 up_write(&mm->mmap_sem);

 return ret;
}
