
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct vmcs12 {void* vm_exit_intr_error_code; } ;
struct kvm_vcpu {int dummy; } ;


 int EXIT_QUALIFICATION ;
 scalar_t__ EXIT_REASON_EXTERNAL_INTERRUPT ;
 scalar_t__ INTR_INFO_DELIVER_CODE_MASK ;
 scalar_t__ INTR_INFO_VALID_MASK ;
 int VM_EXIT_INTR_ERROR_CODE ;
 int VM_EXIT_INTR_INFO ;
 int WARN_ON (int) ;
 struct vmcs12* get_vmcs12 (struct kvm_vcpu*) ;
 int nested_vmx_vmexit (struct kvm_vcpu*,scalar_t__,scalar_t__,int ) ;
 void* vmcs_read32 (int ) ;
 int vmcs_readl (int ) ;

__attribute__((used)) static inline int nested_vmx_reflect_vmexit(struct kvm_vcpu *vcpu,
         u32 exit_reason)
{
 u32 exit_intr_info = vmcs_read32(VM_EXIT_INTR_INFO);






 WARN_ON(exit_reason == EXIT_REASON_EXTERNAL_INTERRUPT);
 if ((exit_intr_info &
      (INTR_INFO_VALID_MASK | INTR_INFO_DELIVER_CODE_MASK)) ==
     (INTR_INFO_VALID_MASK | INTR_INFO_DELIVER_CODE_MASK)) {
  struct vmcs12 *vmcs12 = get_vmcs12(vcpu);

  vmcs12->vm_exit_intr_error_code =
   vmcs_read32(VM_EXIT_INTR_ERROR_CODE);
 }

 nested_vmx_vmexit(vcpu, exit_reason, exit_intr_info,
     vmcs_readl(EXIT_QUALIFICATION));
 return 1;
}
