
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* vdso; } ;
struct mm_struct {int mmap_sem; TYPE_1__ context; } ;
struct linux_binprm {int dummy; } ;
struct TYPE_4__ {struct mm_struct* mm; } ;


 int EINTR ;
 scalar_t__ IS_ERR_VALUE (unsigned long) ;
 int PAGE_SIZE ;
 unsigned long STACK_TOP ;
 int VM_EXEC ;
 int VM_MAYEXEC ;
 int VM_MAYREAD ;
 int VM_MAYWRITE ;
 int VM_READ ;
 TYPE_2__* current ;
 scalar_t__ down_write_killable (int *) ;
 unsigned long get_unmapped_area (int *,unsigned long,int ,int ,int ) ;
 int install_special_mapping (struct mm_struct*,unsigned long,int ,int,int *) ;
 int up_write (int *) ;
 int vdso_page ;

int arch_setup_additional_pages(struct linux_binprm *bprm, int uses_interp)
{
 int ret;
 unsigned long vdso_base;
 struct mm_struct *mm = current->mm;

 if (down_write_killable(&mm->mmap_sem))
  return -EINTR;


 vdso_base = STACK_TOP;

 vdso_base = get_unmapped_area(((void*)0), vdso_base, PAGE_SIZE, 0, 0);
 if (IS_ERR_VALUE(vdso_base)) {
  ret = vdso_base;
  goto up_fail;
 }


 ret = install_special_mapping(mm, vdso_base, PAGE_SIZE,
          VM_READ|VM_EXEC|
          VM_MAYREAD|VM_MAYWRITE|VM_MAYEXEC,
          &vdso_page);

 if (ret)
  goto up_fail;

 mm->context.vdso = (void *)vdso_base;

up_fail:
 up_write(&mm->mmap_sem);
 return ret;
}
