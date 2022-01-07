
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; } ;


 int VM_PAT ;

void untrack_pfn_moved(struct vm_area_struct *vma)
{
 vma->vm_flags &= ~VM_PAT;
}
