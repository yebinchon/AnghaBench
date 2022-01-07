
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_4__ {TYPE_1__* mmu; } ;
struct kvm_vcpu {TYPE_2__ arch; int kvm; } ;
struct kvm_mmu_page {int spt; scalar_t__ unsync; } ;
typedef int kvm_pfn_t ;
typedef int hpa_t ;
typedef int gfn_t ;
struct TYPE_3__ {int root_level; } ;


 int PAGE_SHIFT ;
 int PT64_BASE_ADDR_MASK ;
 int PT_PAGE_TABLE_LEVEL ;
 int __pa (int*) ;
 int audit_printk (int ,char*,struct kvm_mmu_page*,int,...) ;
 scalar_t__ is_error_pfn (int) ;
 int is_last_spte (int,int) ;
 int is_shadow_present_pte (int) ;
 int kvm_mmu_page_get_gfn (struct kvm_mmu_page*,int*) ;
 int kvm_vcpu_gfn_to_pfn_atomic (struct kvm_vcpu*,int ) ;
 struct kvm_mmu_page* page_header (int ) ;

__attribute__((used)) static void audit_mappings(struct kvm_vcpu *vcpu, u64 *sptep, int level)
{
 struct kvm_mmu_page *sp;
 gfn_t gfn;
 kvm_pfn_t pfn;
 hpa_t hpa;

 sp = page_header(__pa(sptep));

 if (sp->unsync) {
  if (level != PT_PAGE_TABLE_LEVEL) {
   audit_printk(vcpu->kvm, "unsync sp: %p "
         "level = %d\n", sp, level);
   return;
  }
 }

 if (!is_shadow_present_pte(*sptep) || !is_last_spte(*sptep, level))
  return;

 gfn = kvm_mmu_page_get_gfn(sp, sptep - sp->spt);
 pfn = kvm_vcpu_gfn_to_pfn_atomic(vcpu, gfn);

 if (is_error_pfn(pfn))
  return;

 hpa = pfn << PAGE_SHIFT;
 if ((*sptep & PT64_BASE_ADDR_MASK) != hpa)
  audit_printk(vcpu->kvm, "levels %d pfn %llx hpa %llx "
        "ent %llxn", vcpu->arch.mmu->root_level, pfn,
        hpa, *sptep);
}
