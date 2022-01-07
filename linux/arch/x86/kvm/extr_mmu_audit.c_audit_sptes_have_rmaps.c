
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_vcpu {int kvm; } ;


 int inspect_spte_has_rmap (int ,int *) ;
 scalar_t__ is_last_spte (int ,int) ;
 scalar_t__ is_shadow_present_pte (int ) ;

__attribute__((used)) static void audit_sptes_have_rmaps(struct kvm_vcpu *vcpu, u64 *sptep, int level)
{
 if (is_shadow_present_pte(*sptep) && is_last_spte(*sptep, level))
  inspect_spte_has_rmap(vcpu->kvm, sptep);
}
