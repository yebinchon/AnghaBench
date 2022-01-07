
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int tsr; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int KVM_REQ_PENDING_TIMER ;
 int kvm_make_request (int ,struct kvm_vcpu*) ;
 int kvm_vcpu_kick (struct kvm_vcpu*) ;
 int set_bits (int ,int *) ;
 int smp_wmb () ;

void kvmppc_set_tsr_bits(struct kvm_vcpu *vcpu, u32 tsr_bits)
{
 set_bits(tsr_bits, &vcpu->arch.tsr);
 smp_wmb();
 kvm_make_request(KVM_REQ_PENDING_TIMER, vcpu);
 kvm_vcpu_kick(vcpu);
}
