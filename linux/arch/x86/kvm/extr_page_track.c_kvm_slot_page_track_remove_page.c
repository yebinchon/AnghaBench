
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_memory_slot {int dummy; } ;
struct kvm {int dummy; } ;
typedef int gfn_t ;
typedef enum kvm_page_track_mode { ____Placeholder_kvm_page_track_mode } kvm_page_track_mode ;


 scalar_t__ WARN_ON (int) ;
 int kvm_mmu_gfn_allow_lpage (struct kvm_memory_slot*,int ) ;
 int page_track_mode_is_valid (int) ;
 int update_gfn_track (struct kvm_memory_slot*,int ,int,int) ;

void kvm_slot_page_track_remove_page(struct kvm *kvm,
         struct kvm_memory_slot *slot, gfn_t gfn,
         enum kvm_page_track_mode mode)
{
 if (WARN_ON(!page_track_mode_is_valid(mode)))
  return;

 update_gfn_track(slot, gfn, mode, -1);





 kvm_mmu_gfn_allow_lpage(slot, gfn);
}
