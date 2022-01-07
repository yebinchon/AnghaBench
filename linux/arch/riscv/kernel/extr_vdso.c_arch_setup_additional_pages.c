
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * vdso; } ;
struct mm_struct {int mmap_sem; TYPE_1__ context; } ;
struct linux_binprm {int dummy; } ;
struct TYPE_4__ {struct mm_struct* mm; } ;


 scalar_t__ IS_ERR_VALUE (unsigned long) ;
 int PAGE_SHIFT ;
 int VM_EXEC ;
 int VM_MAYEXEC ;
 int VM_MAYREAD ;
 int VM_MAYWRITE ;
 int VM_READ ;
 TYPE_2__* current ;
 int down_write (int *) ;
 unsigned long get_unmapped_area (int *,int ,unsigned long,int ,int ) ;
 int install_special_mapping (struct mm_struct*,unsigned long,unsigned long,int,int ) ;
 scalar_t__ unlikely (int) ;
 int up_write (int *) ;
 int vdso_pagelist ;
 int vdso_pages ;

int arch_setup_additional_pages(struct linux_binprm *bprm,
 int uses_interp)
{
 struct mm_struct *mm = current->mm;
 unsigned long vdso_base, vdso_len;
 int ret;

 vdso_len = (vdso_pages + 1) << PAGE_SHIFT;

 down_write(&mm->mmap_sem);
 vdso_base = get_unmapped_area(((void*)0), 0, vdso_len, 0, 0);
 if (IS_ERR_VALUE(vdso_base)) {
  ret = vdso_base;
  goto end;
 }






 mm->context.vdso = (void *)vdso_base;

 ret = install_special_mapping(mm, vdso_base, vdso_len,
  (VM_READ | VM_EXEC | VM_MAYREAD | VM_MAYWRITE | VM_MAYEXEC),
  vdso_pagelist);

 if (unlikely(ret))
  mm->context.vdso = ((void*)0);

end:
 up_write(&mm->mmap_sem);
 return ret;
}
