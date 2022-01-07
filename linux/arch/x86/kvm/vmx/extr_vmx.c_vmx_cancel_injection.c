
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int VM_ENTRY_EXCEPTION_ERROR_CODE ;
 int VM_ENTRY_INSTRUCTION_LEN ;
 int VM_ENTRY_INTR_INFO_FIELD ;
 int __vmx_complete_interrupts (struct kvm_vcpu*,int ,int ,int ) ;
 int vmcs_read32 (int ) ;
 int vmcs_write32 (int ,int ) ;

__attribute__((used)) static void vmx_cancel_injection(struct kvm_vcpu *vcpu)
{
 __vmx_complete_interrupts(vcpu,
      vmcs_read32(VM_ENTRY_INTR_INFO_FIELD),
      VM_ENTRY_INSTRUCTION_LEN,
      VM_ENTRY_EXCEPTION_ERROR_CODE);

 vmcs_write32(VM_ENTRY_INTR_INFO_FIELD, 0);
}
