
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
struct vmcs12 {int vm_exit_reason; unsigned long exit_qualification; int launch_state; int vm_exit_msr_store_count; int vm_exit_msr_store_addr; int vm_entry_intr_info_field; void* vmx_instruction_info; void* vm_exit_instruction_len; scalar_t__ idt_vectoring_info_field; void* vm_exit_intr_info; } ;
struct TYPE_2__ {int nmi_injected; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int INTR_INFO_VALID_MASK ;
 int VMX_ABORT_SAVE_GUEST_MSR_FAIL ;
 int VMX_EXIT_REASONS_FAILED_VMENTRY ;
 int VMX_INSTRUCTION_INFO ;
 int VM_EXIT_INSTRUCTION_LEN ;
 int kvm_clear_exception_queue (struct kvm_vcpu*) ;
 int kvm_clear_interrupt_queue (struct kvm_vcpu*) ;
 int nested_vmx_abort (struct kvm_vcpu*,int ) ;
 scalar_t__ nested_vmx_store_msr (struct kvm_vcpu*,int ,int ) ;
 int vmcs12_save_pending_event (struct kvm_vcpu*,struct vmcs12*) ;
 void* vmcs_read32 (int ) ;

__attribute__((used)) static void prepare_vmcs12(struct kvm_vcpu *vcpu, struct vmcs12 *vmcs12,
      u32 exit_reason, u32 exit_intr_info,
      unsigned long exit_qualification)
{

 vmcs12->vm_exit_reason = exit_reason;
 vmcs12->exit_qualification = exit_qualification;
 vmcs12->vm_exit_intr_info = exit_intr_info;

 vmcs12->idt_vectoring_info_field = 0;
 vmcs12->vm_exit_instruction_len = vmcs_read32(VM_EXIT_INSTRUCTION_LEN);
 vmcs12->vmx_instruction_info = vmcs_read32(VMX_INSTRUCTION_INFO);

 if (!(vmcs12->vm_exit_reason & VMX_EXIT_REASONS_FAILED_VMENTRY)) {
  vmcs12->launch_state = 1;



  vmcs12->vm_entry_intr_info_field &= ~INTR_INFO_VALID_MASK;





  vmcs12_save_pending_event(vcpu, vmcs12);







  if (nested_vmx_store_msr(vcpu,
      vmcs12->vm_exit_msr_store_addr,
      vmcs12->vm_exit_msr_store_count))
   nested_vmx_abort(vcpu,
      VMX_ABORT_SAVE_GUEST_MSR_FAIL);
 }





 vcpu->arch.nmi_injected = 0;
 kvm_clear_exception_queue(vcpu);
 kvm_clear_interrupt_queue(vcpu);
}
