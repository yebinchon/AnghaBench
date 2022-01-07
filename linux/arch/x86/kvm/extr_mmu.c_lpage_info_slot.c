
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct kvm_lpage_info** lpage_info; } ;
struct kvm_memory_slot {TYPE_1__ arch; int base_gfn; } ;
struct kvm_lpage_info {int dummy; } ;
typedef int gfn_t ;


 unsigned long gfn_to_index (int ,int ,int) ;

__attribute__((used)) static struct kvm_lpage_info *lpage_info_slot(gfn_t gfn,
           struct kvm_memory_slot *slot,
           int level)
{
 unsigned long idx;

 idx = gfn_to_index(gfn, slot->base_gfn, level);
 return &slot->arch.lpage_info[level - 2][idx];
}
