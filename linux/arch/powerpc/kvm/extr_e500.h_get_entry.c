
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvmppc_vcpu_e500 {int* gtlb_offset; struct kvm_book3e_206_tlb_entry* gtlb_arch; } ;
struct kvm_book3e_206_tlb_entry {int dummy; } ;



__attribute__((used)) static inline struct kvm_book3e_206_tlb_entry *get_entry(
 struct kvmppc_vcpu_e500 *vcpu_e500, int tlbsel, int entry)
{
 int offset = vcpu_e500->gtlb_offset[tlbsel];
 return &vcpu_e500->gtlb_arch[offset + entry];
}
