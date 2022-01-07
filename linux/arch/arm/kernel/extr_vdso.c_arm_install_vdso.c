
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int dummy; } ;
struct TYPE_2__ {unsigned long vdso; } ;
struct mm_struct {TYPE_1__ context; } ;


 int IS_ERR (struct vm_area_struct*) ;
 int PAGE_SHIFT ;
 scalar_t__ PAGE_SIZE ;
 int VM_EXEC ;
 int VM_MAYEXEC ;
 int VM_MAYREAD ;
 int VM_MAYWRITE ;
 int VM_READ ;
 struct vm_area_struct* _install_special_mapping (struct mm_struct*,unsigned long,unsigned long,int,int *) ;
 scalar_t__ install_vvar (struct mm_struct*,unsigned long) ;
 int vdso_text_mapping ;
 int * vdso_text_pagelist ;
 int vdso_total_pages ;

void arm_install_vdso(struct mm_struct *mm, unsigned long addr)
{
 struct vm_area_struct *vma;
 unsigned long len;

 mm->context.vdso = 0;

 if (vdso_text_pagelist == ((void*)0))
  return;

 if (install_vvar(mm, addr))
  return;


 addr += PAGE_SIZE;
 len = (vdso_total_pages - 1) << PAGE_SHIFT;

 vma = _install_special_mapping(mm, addr, len,
  VM_READ | VM_EXEC | VM_MAYREAD | VM_MAYWRITE | VM_MAYEXEC,
  &vdso_text_mapping);

 if (!IS_ERR(vma))
  mm->context.vdso = addr;
}
