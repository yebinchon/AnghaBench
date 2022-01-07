
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_vcpu {int guest_debug; } ;


 int KVM_GUESTDBG_SINGLESTEP ;
 int MSR_SE ;
 int kvmppc_get_msr (struct kvm_vcpu*) ;
 int kvmppc_set_msr (struct kvm_vcpu*,int) ;

__attribute__((used)) static void kvmppc_clear_debug(struct kvm_vcpu *vcpu)
{
 if (vcpu->guest_debug & KVM_GUESTDBG_SINGLESTEP) {
  u64 msr = kvmppc_get_msr(vcpu);

  kvmppc_set_msr(vcpu, msr & ~MSR_SE);
 }
}
