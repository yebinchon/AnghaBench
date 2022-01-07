
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvmppc_slb {int dummy; } ;
struct kvm_vcpu {int dummy; } ;
typedef int gva_t ;


 struct kvmppc_slb* kvmppc_mmu_book3s_64_find_slbe (struct kvm_vcpu*,int ) ;
 int kvmppc_slb_calc_vpn (struct kvmppc_slb*,int ) ;

__attribute__((used)) static u64 kvmppc_mmu_book3s_64_ea_to_vp(struct kvm_vcpu *vcpu, gva_t eaddr,
      bool data)
{
 struct kvmppc_slb *slb;

 slb = kvmppc_mmu_book3s_64_find_slbe(vcpu, eaddr);
 if (!slb)
  return 0;

 return kvmppc_slb_calc_vpn(slb, eaddr);
}
