
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm {int dummy; } ;


 scalar_t__ mmu_spte_clear_track_bits (int *) ;
 int rmap_remove (struct kvm*,int *) ;

__attribute__((used)) static void drop_spte(struct kvm *kvm, u64 *sptep)
{
 if (mmu_spte_clear_track_bits(sptep))
  rmap_remove(kvm, sptep);
}
