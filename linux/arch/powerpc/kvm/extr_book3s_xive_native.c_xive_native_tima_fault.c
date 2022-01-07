
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_fault_t ;
struct vm_fault {int pgoff; int address; struct vm_area_struct* vma; } ;
struct vm_area_struct {int vm_pgoff; } ;


 int PAGE_SHIFT ;
 int VM_FAULT_NOPAGE ;
 int VM_FAULT_SIGBUS ;
 int vmf_insert_pfn (struct vm_area_struct*,int ,int) ;
 int xive_tima_os ;

__attribute__((used)) static vm_fault_t xive_native_tima_fault(struct vm_fault *vmf)
{
 struct vm_area_struct *vma = vmf->vma;

 switch (vmf->pgoff - vma->vm_pgoff) {
 case 0:
 case 1:
  return VM_FAULT_SIGBUS;
 case 2:
  vmf_insert_pfn(vma, vmf->address, xive_tima_os >> PAGE_SHIFT);
  return VM_FAULT_NOPAGE;
 case 3:
 default:
  return VM_FAULT_SIGBUS;
 }
}
