
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct kvm_book3e_206_tlb_entry {int dummy; } ;


 int get_cur_pr (struct kvm_vcpu*) ;
 int get_tlb_tid (struct kvm_book3e_206_tlb_entry*) ;
 int get_tlb_ts (struct kvm_book3e_206_tlb_entry*) ;
 unsigned int kvmppc_e500_get_sid (int ,int ,int ,int ,int ) ;
 int to_e500 (struct kvm_vcpu*) ;

unsigned int kvmppc_e500_get_tlb_stid(struct kvm_vcpu *vcpu,
          struct kvm_book3e_206_tlb_entry *gtlbe)
{
 return kvmppc_e500_get_sid(to_e500(vcpu), get_tlb_ts(gtlbe),
       get_tlb_tid(gtlbe), get_cur_pr(vcpu), 0);
}
