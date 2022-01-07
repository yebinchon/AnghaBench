
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; } ;


 int VM_MPX ;

const char *arch_vma_name(struct vm_area_struct *vma)
{
 if (vma->vm_flags & VM_MPX)
  return "[mpx]";
 return ((void*)0);
}
