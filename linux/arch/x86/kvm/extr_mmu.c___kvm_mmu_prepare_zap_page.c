
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct TYPE_6__ {int invalid; int direct; } ;
struct kvm_mmu_page {TYPE_3__ role; scalar_t__ lpage_disallowed; int link; int root_count; scalar_t__ unsync; } ;
struct TYPE_5__ {struct list_head active_mmu_pages; } ;
struct TYPE_4__ {int mmu_shadow_zapped; } ;
struct kvm {TYPE_2__ arch; TYPE_1__ stat; } ;


 int is_obsolete_sp (struct kvm*,struct kvm_mmu_page*) ;
 int kvm_mmu_page_unlink_children (struct kvm*,struct kvm_mmu_page*) ;
 int kvm_mmu_unlink_parents (struct kvm*,struct kvm_mmu_page*) ;
 int kvm_mod_used_mmu_pages (struct kvm*,int) ;
 int kvm_reload_remote_mmus (struct kvm*) ;
 int kvm_unlink_unsync_page (struct kvm*,struct kvm_mmu_page*) ;
 int list_move (int *,struct list_head*) ;
 int mmu_zap_unsync_children (struct kvm*,struct kvm_mmu_page*,struct list_head*) ;
 int trace_kvm_mmu_prepare_zap_page (struct kvm_mmu_page*) ;
 int unaccount_huge_nx_page (struct kvm*,struct kvm_mmu_page*) ;
 int unaccount_shadowed (struct kvm*,struct kvm_mmu_page*) ;

__attribute__((used)) static bool __kvm_mmu_prepare_zap_page(struct kvm *kvm,
           struct kvm_mmu_page *sp,
           struct list_head *invalid_list,
           int *nr_zapped)
{
 bool list_unstable;

 trace_kvm_mmu_prepare_zap_page(sp);
 ++kvm->stat.mmu_shadow_zapped;
 *nr_zapped = mmu_zap_unsync_children(kvm, sp, invalid_list);
 kvm_mmu_page_unlink_children(kvm, sp);
 kvm_mmu_unlink_parents(kvm, sp);


 list_unstable = *nr_zapped;

 if (!sp->role.invalid && !sp->role.direct)
  unaccount_shadowed(kvm, sp);

 if (sp->unsync)
  kvm_unlink_unsync_page(kvm, sp);
 if (!sp->root_count) {

  (*nr_zapped)++;
  list_move(&sp->link, invalid_list);
  kvm_mod_used_mmu_pages(kvm, -1);
 } else {
  list_move(&sp->link, &kvm->arch.active_mmu_pages);






  if (!is_obsolete_sp(kvm, sp))
   kvm_reload_remote_mmus(kvm);
 }

 if (sp->lpage_disallowed)
  unaccount_huge_nx_page(kvm, sp);

 sp->role.invalid = 1;
 return list_unstable;
}
