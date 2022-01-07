
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {unsigned long long current_vmptr; int hv_evmcs; } ;
struct vcpu_vmx {TYPE_1__ nested; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_4__ {int vm_instruction_error; } ;


 int X86_EFLAGS_AF ;
 int X86_EFLAGS_CF ;
 int X86_EFLAGS_OF ;
 int X86_EFLAGS_PF ;
 int X86_EFLAGS_SF ;
 int X86_EFLAGS_ZF ;
 TYPE_2__* get_vmcs12 (struct kvm_vcpu*) ;
 int kvm_skip_emulated_instruction (struct kvm_vcpu*) ;
 int nested_vmx_failInvalid (struct kvm_vcpu*) ;
 struct vcpu_vmx* to_vmx (struct kvm_vcpu*) ;
 int vmx_get_rflags (struct kvm_vcpu*) ;
 int vmx_set_rflags (struct kvm_vcpu*,int) ;

__attribute__((used)) static int nested_vmx_failValid(struct kvm_vcpu *vcpu,
    u32 vm_instruction_error)
{
 struct vcpu_vmx *vmx = to_vmx(vcpu);





 if (vmx->nested.current_vmptr == -1ull && !vmx->nested.hv_evmcs)
  return nested_vmx_failInvalid(vcpu);

 vmx_set_rflags(vcpu, (vmx_get_rflags(vcpu)
   & ~(X86_EFLAGS_CF | X86_EFLAGS_PF | X86_EFLAGS_AF |
       X86_EFLAGS_SF | X86_EFLAGS_OF))
   | X86_EFLAGS_ZF);
 get_vmcs12(vcpu)->vm_instruction_error = vm_instruction_error;




 return kvm_skip_emulated_instruction(vcpu);
}
