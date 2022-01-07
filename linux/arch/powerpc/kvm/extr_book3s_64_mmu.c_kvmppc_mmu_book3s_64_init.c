
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvmppc_mmu {int is_dcbz32; int ea_to_vp; int esid_to_vsid; int tlbie; int reset_msr; int xlate; int slbia; int slbie; int slbfee; int slbmfev; int slbmfee; int slbmte; int mtsrin; int * mfsrin; } ;
struct TYPE_2__ {int hflags; struct kvmppc_mmu mmu; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int BOOK3S_HFLAG_SLB ;
 int kvmppc_mmu_book3s_64_ea_to_vp ;
 int kvmppc_mmu_book3s_64_esid_to_vsid ;
 int kvmppc_mmu_book3s_64_is_dcbz32 ;
 int kvmppc_mmu_book3s_64_mtsrin ;
 int kvmppc_mmu_book3s_64_reset_msr ;
 int kvmppc_mmu_book3s_64_slbfee ;
 int kvmppc_mmu_book3s_64_slbia ;
 int kvmppc_mmu_book3s_64_slbie ;
 int kvmppc_mmu_book3s_64_slbmfee ;
 int kvmppc_mmu_book3s_64_slbmfev ;
 int kvmppc_mmu_book3s_64_slbmte ;
 int kvmppc_mmu_book3s_64_tlbie ;
 int kvmppc_mmu_book3s_64_xlate ;

void kvmppc_mmu_book3s_64_init(struct kvm_vcpu *vcpu)
{
 struct kvmppc_mmu *mmu = &vcpu->arch.mmu;

 mmu->mfsrin = ((void*)0);
 mmu->mtsrin = kvmppc_mmu_book3s_64_mtsrin;
 mmu->slbmte = kvmppc_mmu_book3s_64_slbmte;
 mmu->slbmfee = kvmppc_mmu_book3s_64_slbmfee;
 mmu->slbmfev = kvmppc_mmu_book3s_64_slbmfev;
 mmu->slbfee = kvmppc_mmu_book3s_64_slbfee;
 mmu->slbie = kvmppc_mmu_book3s_64_slbie;
 mmu->slbia = kvmppc_mmu_book3s_64_slbia;
 mmu->xlate = kvmppc_mmu_book3s_64_xlate;
 mmu->reset_msr = kvmppc_mmu_book3s_64_reset_msr;
 mmu->tlbie = kvmppc_mmu_book3s_64_tlbie;
 mmu->esid_to_vsid = kvmppc_mmu_book3s_64_esid_to_vsid;
 mmu->ea_to_vp = kvmppc_mmu_book3s_64_ea_to_vp;
 mmu->is_dcbz32 = kvmppc_mmu_book3s_64_is_dcbz32;

 vcpu->arch.hflags |= BOOK3S_HFLAG_SLB;
}
