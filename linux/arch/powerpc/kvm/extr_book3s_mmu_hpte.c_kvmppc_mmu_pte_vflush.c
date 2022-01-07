
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_vcpu {int dummy; } ;


 int WARN_ON (int) ;
 int kvmppc_mmu_pte_vflush_64k (struct kvm_vcpu*,int) ;
 int kvmppc_mmu_pte_vflush_long (struct kvm_vcpu*,int) ;
 int kvmppc_mmu_pte_vflush_short (struct kvm_vcpu*,int) ;
 int trace_kvm_book3s_mmu_flush (char*,struct kvm_vcpu*,int,int) ;

void kvmppc_mmu_pte_vflush(struct kvm_vcpu *vcpu, u64 guest_vp, u64 vp_mask)
{
 trace_kvm_book3s_mmu_flush("v", vcpu, guest_vp, vp_mask);
 guest_vp &= vp_mask;

 switch(vp_mask) {
 case 0xfffffffffULL:
  kvmppc_mmu_pte_vflush_short(vcpu, guest_vp);
  break;





 case 0xffffff000ULL:
  kvmppc_mmu_pte_vflush_long(vcpu, guest_vp);
  break;
 default:
  WARN_ON(1);
  return;
 }
}
