
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kvm_mmu_page {int lpage_disallowed; int lpage_disallowed_link; } ;
struct TYPE_4__ {int lpage_disallowed_mmu_pages; } ;
struct TYPE_3__ {int nx_lpage_splits; } ;
struct kvm {TYPE_2__ arch; TYPE_1__ stat; } ;


 int list_add_tail (int *,int *) ;

__attribute__((used)) static void account_huge_nx_page(struct kvm *kvm, struct kvm_mmu_page *sp)
{
 if (sp->lpage_disallowed)
  return;

 ++kvm->stat.nx_lpage_splits;
 list_add_tail(&sp->lpage_disallowed_link,
        &kvm->arch.lpage_disallowed_mmu_pages);
 sp->lpage_disallowed = 1;
}
