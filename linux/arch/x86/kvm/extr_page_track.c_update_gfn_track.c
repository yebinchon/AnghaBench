
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int** gfn_track; } ;
struct kvm_memory_slot {TYPE_1__ arch; int base_gfn; } ;
typedef int gfn_t ;
typedef enum kvm_page_track_mode { ____Placeholder_kvm_page_track_mode } kvm_page_track_mode ;


 int PT_PAGE_TABLE_LEVEL ;
 int USHRT_MAX ;
 scalar_t__ WARN_ON (int) ;
 int gfn_to_index (int ,int ,int ) ;

__attribute__((used)) static void update_gfn_track(struct kvm_memory_slot *slot, gfn_t gfn,
        enum kvm_page_track_mode mode, short count)
{
 int index, val;

 index = gfn_to_index(gfn, slot->base_gfn, PT_PAGE_TABLE_LEVEL);

 val = slot->arch.gfn_track[mode][index];

 if (WARN_ON(val + count < 0 || val + count > USHRT_MAX))
  return;

 slot->arch.gfn_track[mode][index] += count;
}
