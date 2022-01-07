
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u64 ;
struct kvm_tlb_range {void* pages; void* start_gfn; } ;
struct kvm {int dummy; } ;


 int kvm_flush_remote_tlbs_with_range (struct kvm*,struct kvm_tlb_range*) ;

__attribute__((used)) static void kvm_flush_remote_tlbs_with_address(struct kvm *kvm,
  u64 start_gfn, u64 pages)
{
 struct kvm_tlb_range range;

 range.start_gfn = start_gfn;
 range.pages = pages;

 kvm_flush_remote_tlbs_with_range(kvm, &range);
}
