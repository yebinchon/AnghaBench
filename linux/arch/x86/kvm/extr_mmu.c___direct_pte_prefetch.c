
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {int direct; } ;
struct kvm_mmu_page {int * spt; TYPE_1__ role; } ;


 int PTE_PREFETCH_NUM ;
 int WARN_ON (int) ;
 scalar_t__ direct_pte_prefetch_many (struct kvm_vcpu*,struct kvm_mmu_page*,int *,int *) ;
 scalar_t__ is_shadow_present_pte (int ) ;

__attribute__((used)) static void __direct_pte_prefetch(struct kvm_vcpu *vcpu,
      struct kvm_mmu_page *sp, u64 *sptep)
{
 u64 *spte, *start = ((void*)0);
 int i;

 WARN_ON(!sp->role.direct);

 i = (sptep - sp->spt) & ~(PTE_PREFETCH_NUM - 1);
 spte = sp->spt + i;

 for (i = 0; i < PTE_PREFETCH_NUM; i++, spte++) {
  if (is_shadow_present_pte(*spte) || spte == sptep) {
   if (!start)
    continue;
   if (direct_pte_prefetch_many(vcpu, sp, start, spte) < 0)
    break;
   start = ((void*)0);
  } else if (!start)
   start = spte;
 }
}
