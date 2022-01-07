
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_shadow_walk_iterator {int* sptep; int level; } ;
typedef int kvm_pfn_t ;
typedef int gfn_t ;


 int KVM_PAGES_PER_HPAGE (int) ;
 int PT_PAGE_TABLE_LEVEL ;
 int is_large_pte (int) ;
 scalar_t__ is_nx_huge_page_enabled () ;
 scalar_t__ is_shadow_present_pte (int) ;

__attribute__((used)) static void disallowed_hugepage_adjust(struct kvm_shadow_walk_iterator it,
           gfn_t gfn, kvm_pfn_t *pfnp, int *levelp)
{
 int level = *levelp;
 u64 spte = *it.sptep;

 if (it.level == level && level > PT_PAGE_TABLE_LEVEL &&
     is_nx_huge_page_enabled() &&
     is_shadow_present_pte(spte) &&
     !is_large_pte(spte)) {







  u64 page_mask = KVM_PAGES_PER_HPAGE(level) - KVM_PAGES_PER_HPAGE(level - 1);
  *pfnp |= gfn & page_mask;
  (*levelp)--;
 }
}
