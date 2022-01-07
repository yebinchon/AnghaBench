
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvmppc_pte {int vpage; } ;
struct kvm_vcpu {int dummy; } ;
typedef int gva_t ;


 int SID_SHIFT ;
 int kvmppc_mmu_book3s_32_esid_to_vsid (struct kvm_vcpu*,int,int*) ;
 int kvmppc_mmu_book3s_32_xlate_bat (struct kvm_vcpu*,int,struct kvmppc_pte*,int,int) ;

__attribute__((used)) static u64 kvmppc_mmu_book3s_32_ea_to_vp(struct kvm_vcpu *vcpu, gva_t eaddr,
      bool data)
{
 u64 vsid;
 struct kvmppc_pte pte;

 if (!kvmppc_mmu_book3s_32_xlate_bat(vcpu, eaddr, &pte, data, 0))
  return pte.vpage;

 kvmppc_mmu_book3s_32_esid_to_vsid(vcpu, eaddr >> SID_SHIFT, &vsid);
 return (((u64)eaddr >> 12) & 0xffff) | (vsid << 16);
}
