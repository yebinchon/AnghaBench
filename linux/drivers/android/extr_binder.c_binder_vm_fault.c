
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_fault_t ;
struct vm_fault {int dummy; } ;


 int VM_FAULT_SIGBUS ;

__attribute__((used)) static vm_fault_t binder_vm_fault(struct vm_fault *vmf)
{
 return VM_FAULT_SIGBUS;
}
