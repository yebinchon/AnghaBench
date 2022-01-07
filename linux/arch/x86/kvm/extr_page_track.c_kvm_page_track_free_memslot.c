
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ** gfn_track; } ;
struct kvm_memory_slot {TYPE_1__ arch; } ;


 int KVM_PAGE_TRACK_MAX ;
 int kvfree (int *) ;

void kvm_page_track_free_memslot(struct kvm_memory_slot *free,
     struct kvm_memory_slot *dont)
{
 int i;

 for (i = 0; i < KVM_PAGE_TRACK_MAX; i++)
  if (!dont || free->arch.gfn_track[i] !=
        dont->arch.gfn_track[i]) {
   kvfree(free->arch.gfn_track[i]);
   free->arch.gfn_track[i] = ((void*)0);
  }
}
