
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long* rmap; } ;
struct kvm_memory_slot {unsigned long base_gfn; TYPE_1__ arch; } ;
struct kvm {int dummy; } ;


 unsigned long PAGE_SHIFT ;
 unsigned long PTE_RPN_MASK ;
 int kvmhv_remove_nest_rmap_list (struct kvm*,unsigned long*,unsigned long,unsigned long) ;

void kvmhv_remove_nest_rmap_range(struct kvm *kvm,
      const struct kvm_memory_slot *memslot,
      unsigned long gpa, unsigned long hpa,
      unsigned long nbytes)
{
 unsigned long gfn, end_gfn;
 unsigned long addr_mask;

 if (!memslot)
  return;
 gfn = (gpa >> PAGE_SHIFT) - memslot->base_gfn;
 end_gfn = gfn + (nbytes >> PAGE_SHIFT);

 addr_mask = PTE_RPN_MASK & ~(nbytes - 1);
 hpa &= addr_mask;

 for (; gfn < end_gfn; gfn++) {
  unsigned long *rmap = &memslot->arch.rmap[gfn];
  kvmhv_remove_nest_rmap_list(kvm, rmap, hpa, addr_mask);
 }
}
