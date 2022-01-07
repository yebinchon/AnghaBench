
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ level; } ;
struct kvm_mmu_page {int * spt; TYPE_1__ role; } ;
struct kvm {int dummy; } ;


 int PT64_ENT_PER_PAGE ;
 scalar_t__ PT_PAGE_TABLE_LEVEL ;
 int inspect_spte_has_rmap (struct kvm*,int *) ;
 int is_shadow_present_pte (int ) ;

__attribute__((used)) static void check_mappings_rmap(struct kvm *kvm, struct kvm_mmu_page *sp)
{
 int i;

 if (sp->role.level != PT_PAGE_TABLE_LEVEL)
  return;

 for (i = 0; i < PT64_ENT_PER_PAGE; ++i) {
  if (!is_shadow_present_pte(sp->spt[i]))
   continue;

  inspect_spte_has_rmap(kvm, sp->spt + i);
 }
}
