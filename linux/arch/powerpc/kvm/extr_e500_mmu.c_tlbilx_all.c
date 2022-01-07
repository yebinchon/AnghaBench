
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvmppc_vcpu_e500 {TYPE_1__* gtlb_params; } ;
struct kvm_book3e_206_tlb_entry {int dummy; } ;
struct TYPE_2__ {int entries; } ;


 struct kvm_book3e_206_tlb_entry* get_entry (struct kvmppc_vcpu_e500*,int,int) ;
 int get_tlb_tid (struct kvm_book3e_206_tlb_entry*) ;
 int inval_gtlbe_on_host (struct kvmppc_vcpu_e500*,int,int) ;
 int kvmppc_e500_gtlbe_invalidate (struct kvmppc_vcpu_e500*,int,int) ;

__attribute__((used)) static void tlbilx_all(struct kvmppc_vcpu_e500 *vcpu_e500, int tlbsel,
         int pid, int type)
{
 struct kvm_book3e_206_tlb_entry *tlbe;
 int tid, esel;


 for (esel = 0; esel < vcpu_e500->gtlb_params[tlbsel].entries; esel++) {
  tlbe = get_entry(vcpu_e500, tlbsel, esel);
  tid = get_tlb_tid(tlbe);
  if (type == 0 || tid == pid) {
   inval_gtlbe_on_host(vcpu_e500, tlbsel, esel);
   kvmppc_e500_gtlbe_invalidate(vcpu_e500, tlbsel, esel);
  }
 }
}
