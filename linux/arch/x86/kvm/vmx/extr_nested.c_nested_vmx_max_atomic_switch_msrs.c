
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_3__ {int misc_high; int misc_low; } ;
struct TYPE_4__ {TYPE_1__ msrs; } ;
struct vcpu_vmx {TYPE_2__ nested; } ;
struct kvm_vcpu {int dummy; } ;


 int VMX_MISC_MSR_LIST_MULTIPLIER ;
 struct vcpu_vmx* to_vmx (struct kvm_vcpu*) ;
 int vmx_control_msr (int ,int ) ;
 int vmx_misc_max_msr (int ) ;

__attribute__((used)) static u32 nested_vmx_max_atomic_switch_msrs(struct kvm_vcpu *vcpu)
{
 struct vcpu_vmx *vmx = to_vmx(vcpu);
 u64 vmx_misc = vmx_control_msr(vmx->nested.msrs.misc_low,
           vmx->nested.msrs.misc_high);

 return (vmx_misc_max_msr(vmx_misc) + 1) * VMX_MISC_MSR_LIST_MULTIPLIER;
}
