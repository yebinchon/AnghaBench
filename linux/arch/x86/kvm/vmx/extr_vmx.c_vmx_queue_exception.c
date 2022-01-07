
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef unsigned int u32 ;
struct TYPE_9__ {unsigned int event_exit_inst_len; } ;
struct TYPE_10__ {TYPE_4__ arch; } ;
struct TYPE_7__ {scalar_t__ vm86_active; } ;
struct vcpu_vmx {TYPE_5__ vcpu; int emulation_required; TYPE_2__ rmode; } ;
struct TYPE_6__ {unsigned int nr; int has_error_code; unsigned int error_code; } ;
struct TYPE_8__ {int event_exit_inst_len; TYPE_1__ exception; } ;
struct kvm_vcpu {TYPE_3__ arch; } ;


 unsigned int INTR_INFO_DELIVER_CODE_MASK ;
 unsigned int INTR_INFO_VALID_MASK ;
 unsigned int INTR_TYPE_HARD_EXCEPTION ;
 unsigned int INTR_TYPE_SOFT_EXCEPTION ;
 int VM_ENTRY_EXCEPTION_ERROR_CODE ;
 int VM_ENTRY_INSTRUCTION_LEN ;
 int VM_ENTRY_INTR_INFO_FIELD ;
 int WARN_ON_ONCE (int ) ;
 int kvm_deliver_exception_payload (struct kvm_vcpu*) ;
 scalar_t__ kvm_exception_is_soft (unsigned int) ;
 int kvm_inject_realmode_interrupt (struct kvm_vcpu*,unsigned int,int) ;
 struct vcpu_vmx* to_vmx (struct kvm_vcpu*) ;
 int vmcs_write32 (int ,unsigned int) ;
 int vmx_clear_hlt (struct kvm_vcpu*) ;

__attribute__((used)) static void vmx_queue_exception(struct kvm_vcpu *vcpu)
{
 struct vcpu_vmx *vmx = to_vmx(vcpu);
 unsigned nr = vcpu->arch.exception.nr;
 bool has_error_code = vcpu->arch.exception.has_error_code;
 u32 error_code = vcpu->arch.exception.error_code;
 u32 intr_info = nr | INTR_INFO_VALID_MASK;

 kvm_deliver_exception_payload(vcpu);

 if (has_error_code) {
  vmcs_write32(VM_ENTRY_EXCEPTION_ERROR_CODE, error_code);
  intr_info |= INTR_INFO_DELIVER_CODE_MASK;
 }

 if (vmx->rmode.vm86_active) {
  int inc_eip = 0;
  if (kvm_exception_is_soft(nr))
   inc_eip = vcpu->arch.event_exit_inst_len;
  kvm_inject_realmode_interrupt(vcpu, nr, inc_eip);
  return;
 }

 WARN_ON_ONCE(vmx->emulation_required);

 if (kvm_exception_is_soft(nr)) {
  vmcs_write32(VM_ENTRY_INSTRUCTION_LEN,
        vmx->vcpu.arch.event_exit_inst_len);
  intr_info |= INTR_TYPE_SOFT_EXCEPTION;
 } else
  intr_info |= INTR_TYPE_HARD_EXCEPTION;

 vmcs_write32(VM_ENTRY_INTR_INFO_FIELD, intr_info);

 vmx_clear_hlt(vcpu);
}
