
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long* rmap; } ;
struct kvm_memory_slot {unsigned long npages; TYPE_1__ arch; } ;
struct kvm {int dummy; } ;


 int kvm_test_clear_dirty_npages (struct kvm*,unsigned long*) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int set_dirty_bits (unsigned long*,unsigned long,int) ;

long kvmppc_hv_get_dirty_log_hpt(struct kvm *kvm,
   struct kvm_memory_slot *memslot, unsigned long *map)
{
 unsigned long i;
 unsigned long *rmapp;

 preempt_disable();
 rmapp = memslot->arch.rmap;
 for (i = 0; i < memslot->npages; ++i) {
  int npages = kvm_test_clear_dirty_npages(kvm, rmapp);





  if (npages)
   set_dirty_bits(map, i, npages);
  ++rmapp;
 }
 preempt_enable();
 return 0;
}
