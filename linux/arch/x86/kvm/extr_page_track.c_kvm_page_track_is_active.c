
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {int ** gfn_track; } ;
struct kvm_memory_slot {TYPE_1__ arch; int base_gfn; } ;
typedef int gfn_t ;
typedef enum kvm_page_track_mode { ____Placeholder_kvm_page_track_mode } kvm_page_track_mode ;


 int PT_PAGE_TABLE_LEVEL ;
 int READ_ONCE (int ) ;
 scalar_t__ WARN_ON (int) ;
 int gfn_to_index (int ,int ,int ) ;
 struct kvm_memory_slot* kvm_vcpu_gfn_to_memslot (struct kvm_vcpu*,int ) ;
 int page_track_mode_is_valid (int) ;

bool kvm_page_track_is_active(struct kvm_vcpu *vcpu, gfn_t gfn,
         enum kvm_page_track_mode mode)
{
 struct kvm_memory_slot *slot;
 int index;

 if (WARN_ON(!page_track_mode_is_valid(mode)))
  return 0;

 slot = kvm_vcpu_gfn_to_memslot(vcpu, gfn);
 if (!slot)
  return 0;

 index = gfn_to_index(gfn, slot->base_gfn, PT_PAGE_TABLE_LEVEL);
 return !!READ_ONCE(slot->arch.gfn_track[mode][index]);
}
