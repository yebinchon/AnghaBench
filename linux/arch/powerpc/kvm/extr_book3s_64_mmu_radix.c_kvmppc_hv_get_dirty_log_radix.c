
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_memory_slot {unsigned long npages; } ;
struct kvm {int dummy; } ;


 int kvm_radix_test_clear_dirty (struct kvm*,struct kvm_memory_slot*,unsigned long) ;
 int set_dirty_bits (unsigned long*,unsigned long,int) ;

long kvmppc_hv_get_dirty_log_radix(struct kvm *kvm,
   struct kvm_memory_slot *memslot, unsigned long *map)
{
 unsigned long i, j;
 int npages;

 for (i = 0; i < memslot->npages; i = j) {
  npages = kvm_radix_test_clear_dirty(kvm, memslot, i);
  j = i + 1;
  if (npages) {
   set_dirty_bits(map, i, npages);
   j = i + npages;
  }
 }
 return 0;
}
