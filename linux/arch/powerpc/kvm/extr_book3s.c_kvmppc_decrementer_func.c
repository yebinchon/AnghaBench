
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int kvm_vcpu_kick (struct kvm_vcpu*) ;
 int kvmppc_core_queue_dec (struct kvm_vcpu*) ;

void kvmppc_decrementer_func(struct kvm_vcpu *vcpu)
{
 kvmppc_core_queue_dec(vcpu);
 kvm_vcpu_kick(vcpu);
}
