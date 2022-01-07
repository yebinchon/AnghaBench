
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvmppc_vcpu_e500 {int tlb1_max_eaddr; int tlb1_min_eaddr; } ;
struct kvm_vcpu {int dummy; } ;
struct kvm_book3e_206_tlb_entry {int dummy; } ;


 unsigned long get_tlb_bytes (struct kvm_book3e_206_tlb_entry*) ;
 unsigned long get_tlb_eaddr (struct kvm_book3e_206_tlb_entry*) ;
 int get_tlb_v (struct kvm_book3e_206_tlb_entry*) ;
 int max (int ,unsigned long) ;
 int min (int ,unsigned long) ;
 struct kvmppc_vcpu_e500* to_e500 (struct kvm_vcpu*) ;

__attribute__((used)) static void kvmppc_set_tlb1map_range(struct kvm_vcpu *vcpu,
    struct kvm_book3e_206_tlb_entry *gtlbe)
{
 unsigned long start, end, size;
 struct kvmppc_vcpu_e500 *vcpu_e500 = to_e500(vcpu);

 if (!get_tlb_v(gtlbe))
  return;

 size = get_tlb_bytes(gtlbe);
 start = get_tlb_eaddr(gtlbe) & ~(size - 1);
 end = start + size - 1;

 vcpu_e500->tlb1_min_eaddr = min(vcpu_e500->tlb1_min_eaddr, start);
 vcpu_e500->tlb1_max_eaddr = max(vcpu_e500->tlb1_max_eaddr, end);
}
