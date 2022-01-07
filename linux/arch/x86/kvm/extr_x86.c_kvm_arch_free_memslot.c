
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ** lpage_info; int ** rmap; } ;
struct kvm_memory_slot {TYPE_1__ arch; } ;
struct kvm {int dummy; } ;


 int KVM_NR_PAGE_SIZES ;
 int kvfree (int *) ;
 int kvm_page_track_free_memslot (struct kvm_memory_slot*,struct kvm_memory_slot*) ;

void kvm_arch_free_memslot(struct kvm *kvm, struct kvm_memory_slot *free,
      struct kvm_memory_slot *dont)
{
 int i;

 for (i = 0; i < KVM_NR_PAGE_SIZES; ++i) {
  if (!dont || free->arch.rmap[i] != dont->arch.rmap[i]) {
   kvfree(free->arch.rmap[i]);
   free->arch.rmap[i] = ((void*)0);
  }
  if (i == 0)
   continue;

  if (!dont || free->arch.lpage_info[i - 1] !=
        dont->arch.lpage_info[i - 1]) {
   kvfree(free->arch.lpage_info[i - 1]);
   free->arch.lpage_info[i - 1] = ((void*)0);
  }
 }

 kvm_page_track_free_memslot(free, dont);
}
