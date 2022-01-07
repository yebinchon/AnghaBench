
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_memory_slot {int dummy; } ;
struct kvm_lpage_info {int disallow_lpage; } ;
typedef int gfn_t ;


 struct kvm_lpage_info* lpage_info_slot (int ,struct kvm_memory_slot*,int) ;

__attribute__((used)) static bool __mmu_gfn_lpage_is_disallowed(gfn_t gfn, int level,
       struct kvm_memory_slot *slot)
{
 struct kvm_lpage_info *linfo;

 if (slot) {
  linfo = lpage_info_slot(gfn, slot, level);
  return !!linfo->disallow_lpage;
 }

 return 1;
}
