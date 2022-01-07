
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vm_special_mapping {int dummy; } ;
struct vm_area_struct {unsigned long vm_end; unsigned long vm_start; TYPE_2__* vm_mm; } ;
struct TYPE_6__ {TYPE_2__* mm; } ;
struct TYPE_4__ {unsigned long vdso_base; scalar_t__ compat_mm; } ;
struct TYPE_5__ {TYPE_1__ context; } ;


 int EFAULT ;
 int EINVAL ;
 unsigned long PAGE_SHIFT ;
 scalar_t__ WARN_ON_ONCE (int) ;
 TYPE_3__* current ;
 unsigned long vdso32_pages ;
 unsigned long vdso64_pages ;

__attribute__((used)) static int vdso_mremap(const struct vm_special_mapping *sm,
         struct vm_area_struct *vma)
{
 unsigned long vdso_pages;

 vdso_pages = vdso64_pages;





 if ((vdso_pages << PAGE_SHIFT) != vma->vm_end - vma->vm_start)
  return -EINVAL;

 if (WARN_ON_ONCE(current->mm != vma->vm_mm))
  return -EFAULT;

 current->mm->context.vdso_base = vma->vm_start;
 return 0;
}
