
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int fault_dear; TYPE_1__* shared; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct TYPE_3__ {int msr; } ;


 int MSR_DS ;
 int kvmppc_e500_deliver_tlb_miss (struct kvm_vcpu*,int ,unsigned int) ;

void kvmppc_mmu_dtlb_miss(struct kvm_vcpu *vcpu)
{
 unsigned int as = !!(vcpu->arch.shared->msr & MSR_DS);

 kvmppc_e500_deliver_tlb_miss(vcpu, vcpu->arch.fault_dear, as);
}
