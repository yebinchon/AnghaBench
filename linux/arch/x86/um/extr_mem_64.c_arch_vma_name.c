
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {scalar_t__ vm_start; scalar_t__ vm_mm; } ;


 scalar_t__ um_vdso_addr ;

const char *arch_vma_name(struct vm_area_struct *vma)
{
 if (vma->vm_mm && vma->vm_start == um_vdso_addr)
  return "[vdso]";

 return ((void*)0);
}
