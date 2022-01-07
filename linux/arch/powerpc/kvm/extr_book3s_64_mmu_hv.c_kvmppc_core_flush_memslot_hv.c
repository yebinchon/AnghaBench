
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long* rmap; } ;
struct kvm_memory_slot {unsigned long base_gfn; unsigned long npages; TYPE_1__ arch; } ;
struct kvm {int dummy; } ;


 unsigned long KVMPPC_RMAP_PRESENT ;
 scalar_t__ kvm_is_radix (struct kvm*) ;
 int kvm_unmap_rmapp (struct kvm*,struct kvm_memory_slot*,unsigned long) ;
 int kvmppc_radix_flush_memslot (struct kvm*,struct kvm_memory_slot*) ;

void kvmppc_core_flush_memslot_hv(struct kvm *kvm,
      struct kvm_memory_slot *memslot)
{
 unsigned long gfn;
 unsigned long n;
 unsigned long *rmapp;

 gfn = memslot->base_gfn;
 rmapp = memslot->arch.rmap;
 if (kvm_is_radix(kvm)) {
  kvmppc_radix_flush_memslot(kvm, memslot);
  return;
 }

 for (n = memslot->npages; n; --n, ++gfn) {






  if (*rmapp & KVMPPC_RMAP_PRESENT)
   kvm_unmap_rmapp(kvm, memslot, gfn);
  ++rmapp;
 }
}
