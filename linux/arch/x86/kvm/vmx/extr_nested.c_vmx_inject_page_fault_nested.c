
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct x86_exception {int address; int error_code; } ;
struct vmcs12 {int vm_exit_intr_error_code; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_3__ {int nested_run_pending; } ;
struct TYPE_4__ {TYPE_1__ nested; } ;


 int EXIT_REASON_EXCEPTION_NMI ;
 int INTR_INFO_DELIVER_CODE_MASK ;
 int INTR_INFO_VALID_MASK ;
 int INTR_TYPE_HARD_EXCEPTION ;
 int PF_VECTOR ;
 int WARN_ON (int) ;
 struct vmcs12* get_vmcs12 (struct kvm_vcpu*) ;
 int is_guest_mode (struct kvm_vcpu*) ;
 int kvm_inject_page_fault (struct kvm_vcpu*,struct x86_exception*) ;
 scalar_t__ nested_vmx_is_page_fault_vmexit (struct vmcs12*,int ) ;
 int nested_vmx_vmexit (struct kvm_vcpu*,int ,int,int ) ;
 TYPE_2__* to_vmx (struct kvm_vcpu*) ;

__attribute__((used)) static void vmx_inject_page_fault_nested(struct kvm_vcpu *vcpu,
  struct x86_exception *fault)
{
 struct vmcs12 *vmcs12 = get_vmcs12(vcpu);

 WARN_ON(!is_guest_mode(vcpu));

 if (nested_vmx_is_page_fault_vmexit(vmcs12, fault->error_code) &&
  !to_vmx(vcpu)->nested.nested_run_pending) {
  vmcs12->vm_exit_intr_error_code = fault->error_code;
  nested_vmx_vmexit(vcpu, EXIT_REASON_EXCEPTION_NMI,
      PF_VECTOR | INTR_TYPE_HARD_EXCEPTION |
      INTR_INFO_DELIVER_CODE_MASK | INTR_INFO_VALID_MASK,
      fault->address);
 } else {
  kvm_inject_page_fault(vcpu, fault);
 }
}
