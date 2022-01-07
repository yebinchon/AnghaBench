
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tcr; int decar; int dec; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int TCR_ARE ;
 int TSR_DIS ;
 int kvmppc_emulate_dec (struct kvm_vcpu*) ;
 int kvmppc_set_tsr_bits (struct kvm_vcpu*,int ) ;

void kvmppc_decrementer_func(struct kvm_vcpu *vcpu)
{
 if (vcpu->arch.tcr & TCR_ARE) {
  vcpu->arch.dec = vcpu->arch.decar;
  kvmppc_emulate_dec(vcpu);
 }

 kvmppc_set_tsr_bits(vcpu, TSR_DIS);
}
