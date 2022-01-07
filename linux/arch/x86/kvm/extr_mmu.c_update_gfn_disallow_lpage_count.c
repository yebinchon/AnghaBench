
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_memory_slot {int dummy; } ;
struct kvm_lpage_info {scalar_t__ disallow_lpage; } ;
typedef int gfn_t ;


 int PT_DIRECTORY_LEVEL ;
 int PT_MAX_HUGEPAGE_LEVEL ;
 int WARN_ON (int) ;
 struct kvm_lpage_info* lpage_info_slot (int ,struct kvm_memory_slot*,int) ;

__attribute__((used)) static void update_gfn_disallow_lpage_count(struct kvm_memory_slot *slot,
         gfn_t gfn, int count)
{
 struct kvm_lpage_info *linfo;
 int i;

 for (i = PT_DIRECTORY_LEVEL; i <= PT_MAX_HUGEPAGE_LEVEL; ++i) {
  linfo = lpage_info_slot(gfn, slot, i);
  linfo->disallow_lpage += count;
  WARN_ON(linfo->disallow_lpage < 0);
 }
}
