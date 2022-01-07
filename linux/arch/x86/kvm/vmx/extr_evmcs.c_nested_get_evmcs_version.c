
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {scalar_t__ enlightened_vmcs_enabled; } ;
struct vcpu_vmx {TYPE_1__ nested; } ;
struct kvm_vcpu {int dummy; } ;


 int KVM_EVMCS_VERSION ;
 struct vcpu_vmx* to_vmx (struct kvm_vcpu*) ;

uint16_t nested_get_evmcs_version(struct kvm_vcpu *vcpu)
{
       struct vcpu_vmx *vmx = to_vmx(vcpu);






       if (vmx->nested.enlightened_vmcs_enabled)
               return (KVM_EVMCS_VERSION << 8) | 1;

       return 0;
}
