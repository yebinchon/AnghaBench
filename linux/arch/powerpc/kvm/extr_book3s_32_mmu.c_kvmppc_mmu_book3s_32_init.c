
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvmppc_mmu {int * slbia; int * slbie; int * slbfee; int * slbmfev; int * slbmfee; int * slbmte; int is_dcbz32; int ea_to_vp; int esid_to_vsid; int tlbie; int reset_msr; int xlate; int mfsrin; int mtsrin; } ;
struct TYPE_2__ {struct kvmppc_mmu mmu; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int kvmppc_mmu_book3s_32_ea_to_vp ;
 int kvmppc_mmu_book3s_32_esid_to_vsid ;
 int kvmppc_mmu_book3s_32_is_dcbz32 ;
 int kvmppc_mmu_book3s_32_mfsrin ;
 int kvmppc_mmu_book3s_32_mtsrin ;
 int kvmppc_mmu_book3s_32_reset_msr ;
 int kvmppc_mmu_book3s_32_tlbie ;
 int kvmppc_mmu_book3s_32_xlate ;

void kvmppc_mmu_book3s_32_init(struct kvm_vcpu *vcpu)
{
 struct kvmppc_mmu *mmu = &vcpu->arch.mmu;

 mmu->mtsrin = kvmppc_mmu_book3s_32_mtsrin;
 mmu->mfsrin = kvmppc_mmu_book3s_32_mfsrin;
 mmu->xlate = kvmppc_mmu_book3s_32_xlate;
 mmu->reset_msr = kvmppc_mmu_book3s_32_reset_msr;
 mmu->tlbie = kvmppc_mmu_book3s_32_tlbie;
 mmu->esid_to_vsid = kvmppc_mmu_book3s_32_esid_to_vsid;
 mmu->ea_to_vp = kvmppc_mmu_book3s_32_ea_to_vp;
 mmu->is_dcbz32 = kvmppc_mmu_book3s_32_is_dcbz32;

 mmu->slbmte = ((void*)0);
 mmu->slbmfee = ((void*)0);
 mmu->slbmfev = ((void*)0);
 mmu->slbfee = ((void*)0);
 mmu->slbie = ((void*)0);
 mmu->slbia = ((void*)0);
}
