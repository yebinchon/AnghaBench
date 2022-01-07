
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mm_struct {int mmap_sem; } ;
struct linux_binprm {int dummy; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;


 int KUSER_BASE ;
 int KUSER_SIZE ;
 int VM_EXEC ;
 int VM_MAYEXEC ;
 int VM_MAYREAD ;
 int VM_READ ;
 TYPE_1__* current ;
 int down_write (int *) ;
 int install_special_mapping (struct mm_struct*,int ,int ,int,int ) ;
 int kuser_page ;
 int up_write (int *) ;

int arch_setup_additional_pages(struct linux_binprm *bprm, int uses_interp)
{
 struct mm_struct *mm = current->mm;
 int ret;

 down_write(&mm->mmap_sem);


 ret = install_special_mapping(mm, KUSER_BASE, KUSER_SIZE,
          VM_READ | VM_EXEC | VM_MAYREAD |
          VM_MAYEXEC, kuser_page);

 up_write(&mm->mmap_sem);

 return ret;
}
