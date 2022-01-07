
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_mmu_page {int lpage_disallowed; int lpage_disallowed_link; } ;
struct TYPE_2__ {int nx_lpage_splits; } ;
struct kvm {TYPE_1__ stat; } ;


 int list_del (int *) ;

__attribute__((used)) static void unaccount_huge_nx_page(struct kvm *kvm, struct kvm_mmu_page *sp)
{
 --kvm->stat.nx_lpage_splits;
 sp->lpage_disallowed = 0;
 list_del(&sp->lpage_disallowed_link);
}
