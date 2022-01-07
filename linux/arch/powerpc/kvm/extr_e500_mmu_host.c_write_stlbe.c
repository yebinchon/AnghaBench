
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvmppc_vcpu_e500 {int vcpu; } ;
struct kvm_book3e_206_tlb_entry {int mas1; } ;


 int MAS1_TID (int) ;
 int kvmppc_e500_get_tlb_stid (int *,struct kvm_book3e_206_tlb_entry*) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int write_host_tlbe (struct kvmppc_vcpu_e500*,int,int,struct kvm_book3e_206_tlb_entry*) ;

__attribute__((used)) static void write_stlbe(struct kvmppc_vcpu_e500 *vcpu_e500,
   struct kvm_book3e_206_tlb_entry *gtlbe,
   struct kvm_book3e_206_tlb_entry *stlbe,
   int stlbsel, int sesel)
{
 int stid;

 preempt_disable();
 stid = kvmppc_e500_get_tlb_stid(&vcpu_e500->vcpu, gtlbe);

 stlbe->mas1 |= MAS1_TID(stid);
 write_host_tlbe(vcpu_e500, stlbsel, sesel, stlbe);
 preempt_enable();
}
