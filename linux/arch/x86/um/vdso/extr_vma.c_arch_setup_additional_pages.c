
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mm_struct {int mmap_sem; } ;
struct linux_binprm {int dummy; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;


 int EINTR ;
 int PAGE_SIZE ;
 int VM_EXEC ;
 int VM_MAYEXEC ;
 int VM_MAYREAD ;
 int VM_MAYWRITE ;
 int VM_READ ;
 TYPE_1__* current ;
 scalar_t__ down_write_killable (int *) ;
 int install_special_mapping (struct mm_struct*,int ,int ,int,int ) ;
 int um_vdso_addr ;
 int up_write (int *) ;
 int vdso_enabled ;
 int vdsop ;

int arch_setup_additional_pages(struct linux_binprm *bprm, int uses_interp)
{
 int err;
 struct mm_struct *mm = current->mm;

 if (!vdso_enabled)
  return 0;

 if (down_write_killable(&mm->mmap_sem))
  return -EINTR;

 err = install_special_mapping(mm, um_vdso_addr, PAGE_SIZE,
  VM_READ|VM_EXEC|
  VM_MAYREAD|VM_MAYWRITE|VM_MAYEXEC,
  vdsop);

 up_write(&mm->mmap_sem);

 return err;
}
