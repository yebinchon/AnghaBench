
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {int direct; } ;
struct kvm_mmu_page {int spt; TYPE_1__ role; } ;
typedef int gfn_t ;


 int WARN_ON (int) ;
 scalar_t__ cmpxchg64 (scalar_t__*,scalar_t__,scalar_t__) ;
 scalar_t__ is_writable_pte (scalar_t__) ;
 int kvm_mmu_page_get_gfn (struct kvm_mmu_page*,scalar_t__*) ;
 int kvm_vcpu_mark_page_dirty (struct kvm_vcpu*,int ) ;

__attribute__((used)) static bool
fast_pf_fix_direct_spte(struct kvm_vcpu *vcpu, struct kvm_mmu_page *sp,
   u64 *sptep, u64 old_spte, u64 new_spte)
{
 gfn_t gfn;

 WARN_ON(!sp->role.direct);
 if (cmpxchg64(sptep, old_spte, new_spte) != old_spte)
  return 0;

 if (is_writable_pte(new_spte) && !is_writable_pte(old_spte)) {




  gfn = kvm_mmu_page_get_gfn(sp, sptep - sp->spt);
  kvm_vcpu_mark_page_dirty(vcpu, gfn);
 }

 return 1;
}
