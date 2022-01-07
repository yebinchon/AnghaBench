
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvmppc_mmu {int reset_msr; int xlate; } ;
struct TYPE_2__ {int slb_nr; int hflags; struct kvmppc_mmu mmu; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int BOOK3S_HFLAG_SLB ;
 int kvmppc_mmu_book3s_64_hv_reset_msr ;
 int kvmppc_mmu_book3s_64_hv_xlate ;

void kvmppc_mmu_book3s_hv_init(struct kvm_vcpu *vcpu)
{
 struct kvmppc_mmu *mmu = &vcpu->arch.mmu;

 vcpu->arch.slb_nr = 32;

 mmu->xlate = kvmppc_mmu_book3s_64_hv_xlate;
 mmu->reset_msr = kvmppc_mmu_book3s_64_hv_reset_msr;

 vcpu->arch.hflags |= BOOK3S_HFLAG_SLB;
}
