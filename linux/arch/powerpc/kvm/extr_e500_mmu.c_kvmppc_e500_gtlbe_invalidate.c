
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvmppc_vcpu_e500 {int dummy; } ;
struct kvm_book3e_206_tlb_entry {scalar_t__ mas1; } ;


 struct kvm_book3e_206_tlb_entry* get_entry (struct kvmppc_vcpu_e500*,int,int) ;
 int get_tlb_iprot (struct kvm_book3e_206_tlb_entry*) ;
 scalar_t__ kvmppc_need_recalc_tlb1map_range (struct kvmppc_vcpu_e500*,struct kvm_book3e_206_tlb_entry*) ;
 int kvmppc_recalc_tlb1map_range (struct kvmppc_vcpu_e500*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static inline int kvmppc_e500_gtlbe_invalidate(
    struct kvmppc_vcpu_e500 *vcpu_e500,
    int tlbsel, int esel)
{
 struct kvm_book3e_206_tlb_entry *gtlbe =
  get_entry(vcpu_e500, tlbsel, esel);

 if (unlikely(get_tlb_iprot(gtlbe)))
  return -1;

 if (tlbsel == 1 && kvmppc_need_recalc_tlb1map_range(vcpu_e500, gtlbe))
  kvmppc_recalc_tlb1map_range(vcpu_e500);

 gtlbe->mas1 = 0;

 return 0;
}
