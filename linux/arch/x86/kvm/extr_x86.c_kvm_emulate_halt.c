
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int kvm_skip_emulated_instruction (struct kvm_vcpu*) ;
 scalar_t__ kvm_vcpu_halt (struct kvm_vcpu*) ;

int kvm_emulate_halt(struct kvm_vcpu *vcpu)
{
 int ret = kvm_skip_emulated_instruction(vcpu);




 return kvm_vcpu_halt(vcpu) && ret;
}
