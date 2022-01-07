
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kvm_vcpu {int dummy; } ;


 int kvmppc_e500_recalc_shadow_pid (int ) ;
 int to_e500 (struct kvm_vcpu*) ;

void kvmppc_mmu_msr_notify(struct kvm_vcpu *vcpu, u32 old_msr)
{

 kvmppc_e500_recalc_shadow_pid(to_e500(vcpu));
}
