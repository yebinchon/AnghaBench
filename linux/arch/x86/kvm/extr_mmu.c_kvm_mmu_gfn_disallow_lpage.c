
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_memory_slot {int dummy; } ;
typedef int gfn_t ;


 int update_gfn_disallow_lpage_count (struct kvm_memory_slot*,int ,int) ;

void kvm_mmu_gfn_disallow_lpage(struct kvm_memory_slot *slot, gfn_t gfn)
{
 update_gfn_disallow_lpage_count(slot, gfn, 1);
}
