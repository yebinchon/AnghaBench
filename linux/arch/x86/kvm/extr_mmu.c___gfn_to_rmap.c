
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_rmap_head {int dummy; } ;
struct TYPE_2__ {struct kvm_rmap_head** rmap; } ;
struct kvm_memory_slot {TYPE_1__ arch; int base_gfn; } ;
typedef int gfn_t ;


 int PT_PAGE_TABLE_LEVEL ;
 unsigned long gfn_to_index (int ,int ,int) ;

__attribute__((used)) static struct kvm_rmap_head *__gfn_to_rmap(gfn_t gfn, int level,
        struct kvm_memory_slot *slot)
{
 unsigned long idx;

 idx = gfn_to_index(gfn, slot->base_gfn, level);
 return &slot->arch.rmap[level - PT_PAGE_TABLE_LEVEL][idx];
}
