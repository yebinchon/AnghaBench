
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {scalar_t__ exit_reason; } ;


 int EMULTYPE_SKIP ;
 scalar_t__ EXIT_REASON_EPT_MISCONFIG ;
 int VM_EXIT_INSTRUCTION_LEN ;
 int X86_FEATURE_HYPERVISOR ;
 int kvm_emulate_instruction (struct kvm_vcpu*,int ) ;
 unsigned long kvm_rip_read (struct kvm_vcpu*) ;
 int kvm_rip_write (struct kvm_vcpu*,unsigned long) ;
 int static_cpu_has (int ) ;
 TYPE_1__* to_vmx (struct kvm_vcpu*) ;
 scalar_t__ vmcs_read32 (int ) ;
 int vmx_set_interrupt_shadow (struct kvm_vcpu*,int ) ;

__attribute__((used)) static int skip_emulated_instruction(struct kvm_vcpu *vcpu)
{
 unsigned long rip;
 if (!static_cpu_has(X86_FEATURE_HYPERVISOR) ||
     to_vmx(vcpu)->exit_reason != EXIT_REASON_EPT_MISCONFIG) {
  rip = kvm_rip_read(vcpu);
  rip += vmcs_read32(VM_EXIT_INSTRUCTION_LEN);
  kvm_rip_write(vcpu, rip);
 } else {
  if (!kvm_emulate_instruction(vcpu, EMULTYPE_SKIP))
   return 0;
 }


 vmx_set_interrupt_shadow(vcpu, 0);

 return 1;
}
