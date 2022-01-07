
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {scalar_t__ vm_start; } ;


 scalar_t__ KUSER_BASE ;

const char *arch_vma_name(struct vm_area_struct *vma)
{
 return (vma->vm_start == KUSER_BASE) ? "[kuser]" : ((void*)0);
}
