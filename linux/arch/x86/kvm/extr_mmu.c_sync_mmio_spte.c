
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_vcpu {int dummy; } ;
typedef scalar_t__ gfn_t ;


 scalar_t__ get_mmio_spte_gfn (int ) ;
 int is_mmio_spte (int ) ;
 int mark_mmio_spte (struct kvm_vcpu*,int *,scalar_t__,unsigned int) ;
 int mmu_spte_clear_no_track (int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static bool sync_mmio_spte(struct kvm_vcpu *vcpu, u64 *sptep, gfn_t gfn,
      unsigned access, int *nr_present)
{
 if (unlikely(is_mmio_spte(*sptep))) {
  if (gfn != get_mmio_spte_gfn(*sptep)) {
   mmu_spte_clear_no_track(sptep);
   return 1;
  }

  (*nr_present)++;
  mark_mmio_spte(vcpu, sptep, gfn, access);
  return 1;
 }

 return 0;
}
