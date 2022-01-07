
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int nip; } ;
struct TYPE_6__ {TYPE_2__ regs; TYPE_1__* shared; } ;
struct kvm_vcpu {TYPE_3__ arch; } ;
struct TYPE_4__ {int msr; } ;


 int MSR_IS ;
 int kvmppc_e500_deliver_tlb_miss (struct kvm_vcpu*,int ,unsigned int) ;

void kvmppc_mmu_itlb_miss(struct kvm_vcpu *vcpu)
{
 unsigned int as = !!(vcpu->arch.shared->msr & MSR_IS);

 kvmppc_e500_deliver_tlb_miss(vcpu, vcpu->arch.regs.nip, as);
}
