
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int kvm_emulate_wbinvd_noskip (struct kvm_vcpu*) ;
 int kvm_skip_emulated_instruction (struct kvm_vcpu*) ;

int kvm_emulate_wbinvd(struct kvm_vcpu *vcpu)
{
 kvm_emulate_wbinvd_noskip(vcpu);
 return kvm_skip_emulated_instruction(vcpu);
}
