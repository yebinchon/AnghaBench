
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {scalar_t__ level; } ;
struct kvm_mmu_page {TYPE_1__ role; } ;


 scalar_t__ PT_PAGE_TABLE_LEVEL ;
 int __direct_pte_prefetch (struct kvm_vcpu*,struct kvm_mmu_page*,int *) ;
 int __pa (int *) ;
 struct kvm_mmu_page* page_header (int ) ;
 scalar_t__ sp_ad_disabled (struct kvm_mmu_page*) ;

__attribute__((used)) static void direct_pte_prefetch(struct kvm_vcpu *vcpu, u64 *sptep)
{
 struct kvm_mmu_page *sp;

 sp = page_header(__pa(sptep));






 if (sp_ad_disabled(sp))
  return;

 if (sp->role.level > PT_PAGE_TABLE_LEVEL)
  return;

 __direct_pte_prefetch(vcpu, sp, sptep);
}
