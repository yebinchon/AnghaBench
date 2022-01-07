
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int flags; } ;
struct tlbe_priv {TYPE_1__ ref; } ;
struct kvmppc_vcpu_e500 {struct tlbe_priv** gtlb_priv; } ;
struct kvm_vcpu {int dummy; } ;
struct kvm_book3e_206_tlb_entry {int dummy; } ;
typedef int gpa_t ;
typedef int gfn_t ;


 int BOOK3E_PAGESZ_4K ;
 int BUG () ;
 int E500_TLB_VALID ;
 int PAGE_SHIFT ;
 int esel_of (unsigned int) ;
 struct kvm_book3e_206_tlb_entry* get_entry (struct kvmppc_vcpu_e500*,int,int) ;
 int kvmppc_e500_setup_stlbe (struct kvm_vcpu*,struct kvm_book3e_206_tlb_entry*,int ,TYPE_1__*,int ,struct kvm_book3e_206_tlb_entry*) ;
 int kvmppc_e500_tlb0_map (struct kvmppc_vcpu_e500*,int,struct kvm_book3e_206_tlb_entry*) ;
 int kvmppc_e500_tlb1_map (struct kvmppc_vcpu_e500*,int ,int,struct kvm_book3e_206_tlb_entry*,struct kvm_book3e_206_tlb_entry*,int) ;
 int tlbsel_of (unsigned int) ;
 struct kvmppc_vcpu_e500* to_e500 (struct kvm_vcpu*) ;
 int write_stlbe (struct kvmppc_vcpu_e500*,struct kvm_book3e_206_tlb_entry*,struct kvm_book3e_206_tlb_entry*,int ,int ) ;

void kvmppc_mmu_map(struct kvm_vcpu *vcpu, u64 eaddr, gpa_t gpaddr,
      unsigned int index)
{
 struct kvmppc_vcpu_e500 *vcpu_e500 = to_e500(vcpu);
 struct tlbe_priv *priv;
 struct kvm_book3e_206_tlb_entry *gtlbe, stlbe;
 int tlbsel = tlbsel_of(index);
 int esel = esel_of(index);

 gtlbe = get_entry(vcpu_e500, tlbsel, esel);

 switch (tlbsel) {
 case 0:
  priv = &vcpu_e500->gtlb_priv[tlbsel][esel];


  if (!(priv->ref.flags & E500_TLB_VALID)) {
   kvmppc_e500_tlb0_map(vcpu_e500, esel, &stlbe);
  } else {
   kvmppc_e500_setup_stlbe(vcpu, gtlbe, BOOK3E_PAGESZ_4K,
      &priv->ref, eaddr, &stlbe);
   write_stlbe(vcpu_e500, gtlbe, &stlbe, 0, 0);
  }
  break;

 case 1: {
  gfn_t gfn = gpaddr >> PAGE_SHIFT;
  kvmppc_e500_tlb1_map(vcpu_e500, eaddr, gfn, gtlbe, &stlbe,
         esel);
  break;
 }

 default:
  BUG();
  break;
 }
}
