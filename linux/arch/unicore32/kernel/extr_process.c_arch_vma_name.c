
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_start; } ;



const char *arch_vma_name(struct vm_area_struct *vma)
{
 return (vma->vm_start == 0xffff0000) ? "[vectors]" : ((void*)0);
}
