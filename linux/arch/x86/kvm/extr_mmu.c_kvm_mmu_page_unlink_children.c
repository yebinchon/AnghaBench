
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_mmu_page {scalar_t__ spt; } ;
struct kvm {int dummy; } ;


 unsigned int PT64_ENT_PER_PAGE ;
 int mmu_page_zap_pte (struct kvm*,struct kvm_mmu_page*,scalar_t__) ;

__attribute__((used)) static void kvm_mmu_page_unlink_children(struct kvm *kvm,
      struct kvm_mmu_page *sp)
{
 unsigned i;

 for (i = 0; i < PT64_ENT_PER_PAGE; ++i)
  mmu_page_zap_pte(kvm, sp, sp->spt + i);
}
