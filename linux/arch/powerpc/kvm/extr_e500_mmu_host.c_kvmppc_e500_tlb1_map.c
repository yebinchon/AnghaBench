
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct tlbe_ref {int flags; } ;
struct kvmppc_vcpu_e500 {TYPE_1__** gtlb_priv; } ;
struct kvm_book3e_206_tlb_entry {int dummy; } ;
typedef int gfn_t ;
struct TYPE_2__ {struct tlbe_ref ref; } ;


 scalar_t__ BOOK3E_PAGESZ_4K ;
 int E500_TLB_TLB0 ;
 scalar_t__ get_tlb_tsize (struct kvm_book3e_206_tlb_entry*) ;
 int kvmppc_e500_shadow_map (struct kvmppc_vcpu_e500*,int ,int ,struct kvm_book3e_206_tlb_entry*,int,struct kvm_book3e_206_tlb_entry*,struct tlbe_ref*) ;
 int kvmppc_e500_tlb1_map_tlb1 (struct kvmppc_vcpu_e500*,struct tlbe_ref*,int) ;
 int write_stlbe (struct kvmppc_vcpu_e500*,struct kvm_book3e_206_tlb_entry*,struct kvm_book3e_206_tlb_entry*,int,int) ;

__attribute__((used)) static int kvmppc_e500_tlb1_map(struct kvmppc_vcpu_e500 *vcpu_e500,
  u64 gvaddr, gfn_t gfn, struct kvm_book3e_206_tlb_entry *gtlbe,
  struct kvm_book3e_206_tlb_entry *stlbe, int esel)
{
 struct tlbe_ref *ref = &vcpu_e500->gtlb_priv[1][esel].ref;
 int sesel;
 int r;

 r = kvmppc_e500_shadow_map(vcpu_e500, gvaddr, gfn, gtlbe, 1, stlbe,
       ref);
 if (r)
  return r;


 if (get_tlb_tsize(stlbe) == BOOK3E_PAGESZ_4K) {
  vcpu_e500->gtlb_priv[1][esel].ref.flags |= E500_TLB_TLB0;
  write_stlbe(vcpu_e500, gtlbe, stlbe, 0, 0);
  return 0;
 }


 sesel = kvmppc_e500_tlb1_map_tlb1(vcpu_e500, ref, esel);
 write_stlbe(vcpu_e500, gtlbe, stlbe, 1, sesel);

 return 0;
}
