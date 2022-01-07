
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmcs12 {int vm_function_control; } ;


 int VMX_VMFUNC_EPTP_SWITCHING ;
 scalar_t__ nested_cpu_has_vmfunc (struct vmcs12*) ;

__attribute__((used)) static inline bool nested_cpu_has_eptp_switching(struct vmcs12 *vmcs12)
{
 return nested_cpu_has_vmfunc(vmcs12) &&
  (vmcs12->vm_function_control &
   VMX_VMFUNC_EPTP_SWITCHING);
}
