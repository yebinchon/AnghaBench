
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvmppc_vcpu_e500 {unsigned long tlb1_min_eaddr; unsigned int* gtlb_offset; int tlb1_max_eaddr; struct kvm_book3e_206_tlb_entry* gtlb_arch; TYPE_1__* gtlb_params; } ;
struct kvm_book3e_206_tlb_entry {int dummy; } ;
typedef int gva_t ;
struct TYPE_2__ {int entries; } ;


 int get_tlb_eaddr (struct kvm_book3e_206_tlb_entry*) ;
 int get_tlb_end (struct kvm_book3e_206_tlb_entry*) ;
 int get_tlb_v (struct kvm_book3e_206_tlb_entry*) ;
 int max (int ,int ) ;
 unsigned long min (unsigned long,int ) ;

__attribute__((used)) static void kvmppc_recalc_tlb1map_range(struct kvmppc_vcpu_e500 *vcpu_e500)
{
 int size = vcpu_e500->gtlb_params[1].entries;
 unsigned int offset;
 gva_t eaddr;
 int i;

 vcpu_e500->tlb1_min_eaddr = ~0UL;
 vcpu_e500->tlb1_max_eaddr = 0;
 offset = vcpu_e500->gtlb_offset[1];

 for (i = 0; i < size; i++) {
  struct kvm_book3e_206_tlb_entry *tlbe =
   &vcpu_e500->gtlb_arch[offset + i];

  if (!get_tlb_v(tlbe))
   continue;

  eaddr = get_tlb_eaddr(tlbe);
  vcpu_e500->tlb1_min_eaddr =
    min(vcpu_e500->tlb1_min_eaddr, eaddr);

  eaddr = get_tlb_end(tlbe);
  vcpu_e500->tlb1_max_eaddr =
    max(vcpu_e500->tlb1_max_eaddr, eaddr);
 }
}
