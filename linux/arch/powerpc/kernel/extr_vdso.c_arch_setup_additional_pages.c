
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct page {int dummy; } ;
struct TYPE_3__ {unsigned long vdso_base; } ;
struct mm_struct {int mmap_sem; TYPE_1__ context; } ;
struct linux_binprm {int dummy; } ;
struct TYPE_4__ {struct mm_struct* mm; } ;


 unsigned long ALIGN (unsigned long,int) ;
 int EINTR ;
 scalar_t__ IS_ERR_VALUE (unsigned long) ;
 int PAGE_MASK ;
 unsigned long PAGE_SHIFT ;
 unsigned long VDSO32_MBASE ;
 int VDSO_ALIGNMENT ;
 int VM_EXEC ;
 int VM_MAYEXEC ;
 int VM_MAYREAD ;
 int VM_MAYWRITE ;
 int VM_READ ;
 TYPE_2__* current ;
 scalar_t__ down_write_killable (int *) ;
 unsigned long get_unmapped_area (int *,unsigned long,unsigned long,int ,int ) ;
 int install_special_mapping (struct mm_struct*,unsigned long,unsigned long,int,struct page**) ;
 scalar_t__ is_32bit_task () ;
 int up_write (int *) ;
 struct page** vdso32_pagelist ;
 unsigned long vdso32_pages ;
 struct page** vdso64_pagelist ;
 unsigned long vdso64_pages ;
 int vdso_ready ;

int arch_setup_additional_pages(struct linux_binprm *bprm, int uses_interp)
{
 struct mm_struct *mm = current->mm;
 struct page **vdso_pagelist;
 unsigned long vdso_pages;
 unsigned long vdso_base;
 int rc;

 if (!vdso_ready)
  return 0;
 vdso_pagelist = vdso32_pagelist;
 vdso_pages = vdso32_pages;
 vdso_base = VDSO32_MBASE;


 current->mm->context.vdso_base = 0;




 if (vdso_pages == 0)
  return 0;

 vdso_pages ++;







 if (down_write_killable(&mm->mmap_sem))
  return -EINTR;
 vdso_base = get_unmapped_area(((void*)0), vdso_base,
          (vdso_pages << PAGE_SHIFT) +
          ((VDSO_ALIGNMENT - 1) & PAGE_MASK),
          0, 0);
 if (IS_ERR_VALUE(vdso_base)) {
  rc = vdso_base;
  goto fail_mmapsem;
 }


 vdso_base = ALIGN(vdso_base, VDSO_ALIGNMENT);






 current->mm->context.vdso_base = vdso_base;
 rc = install_special_mapping(mm, vdso_base, vdso_pages << PAGE_SHIFT,
         VM_READ|VM_EXEC|
         VM_MAYREAD|VM_MAYWRITE|VM_MAYEXEC,
         vdso_pagelist);
 if (rc) {
  current->mm->context.vdso_base = 0;
  goto fail_mmapsem;
 }

 up_write(&mm->mmap_sem);
 return 0;

 fail_mmapsem:
 up_write(&mm->mmap_sem);
 return rc;
}
