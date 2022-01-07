
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_memory_slot {scalar_t__ base_gfn; } ;
struct kvm {int dummy; } ;
typedef scalar_t__ gfn_t ;


 scalar_t__ __ffs (unsigned long) ;
 scalar_t__ __fls (unsigned long) ;
 int kvm_mips_mkclean_gpa_pt (struct kvm*,scalar_t__,scalar_t__) ;

void kvm_arch_mmu_enable_log_dirty_pt_masked(struct kvm *kvm,
  struct kvm_memory_slot *slot,
  gfn_t gfn_offset, unsigned long mask)
{
 gfn_t base_gfn = slot->base_gfn + gfn_offset;
 gfn_t start = base_gfn + __ffs(mask);
 gfn_t end = base_gfn + __fls(mask);

 kvm_mips_mkclean_gpa_pt(kvm, start, end);
}
