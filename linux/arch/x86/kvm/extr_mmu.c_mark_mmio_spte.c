
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u64 ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {unsigned int generation; } ;


 unsigned int MMIO_SPTE_GEN_MASK ;
 unsigned int PAGE_SHIFT ;
 unsigned int generation_mmio_spte_mask (unsigned int) ;
 TYPE_1__* kvm_vcpu_memslots (struct kvm_vcpu*) ;
 int mmu_spte_set (unsigned int*,unsigned int) ;
 unsigned int shadow_mmio_access_mask ;
 unsigned int shadow_mmio_value ;
 unsigned int shadow_nonpresent_or_rsvd_mask ;
 unsigned int shadow_nonpresent_or_rsvd_mask_len ;
 int trace_mark_mmio_spte (unsigned int*,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static void mark_mmio_spte(struct kvm_vcpu *vcpu, u64 *sptep, u64 gfn,
      unsigned access)
{
 u64 gen = kvm_vcpu_memslots(vcpu)->generation & MMIO_SPTE_GEN_MASK;
 u64 mask = generation_mmio_spte_mask(gen);
 u64 gpa = gfn << PAGE_SHIFT;

 access &= shadow_mmio_access_mask;
 mask |= shadow_mmio_value | access;
 mask |= gpa | shadow_nonpresent_or_rsvd_mask;
 mask |= (gpa & shadow_nonpresent_or_rsvd_mask)
  << shadow_nonpresent_or_rsvd_mask_len;

 trace_mark_mmio_spte(sptep, gfn, access, gen);
 mmu_spte_set(sptep, mask);
}
