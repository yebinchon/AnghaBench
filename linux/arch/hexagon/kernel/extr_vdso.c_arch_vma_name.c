
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vm_area_struct {long vm_start; TYPE_2__* vm_mm; } ;
struct TYPE_3__ {scalar_t__ vdso; } ;
struct TYPE_4__ {TYPE_1__ context; } ;



const char *arch_vma_name(struct vm_area_struct *vma)
{
 if (vma->vm_mm && vma->vm_start == (long)vma->vm_mm->context.vdso)
  return "[vdso]";
 return ((void*)0);
}
