
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_vcpu {int dummy; } ;


 int audit_mappings (struct kvm_vcpu*,int *,int) ;
 int audit_spte_after_sync (struct kvm_vcpu*,int *,int) ;
 int audit_sptes_have_rmaps (struct kvm_vcpu*,int *,int) ;

__attribute__((used)) static void audit_spte(struct kvm_vcpu *vcpu, u64 *sptep, int level)
{
 audit_sptes_have_rmaps(vcpu, sptep, level);
 audit_mappings(vcpu, sptep, level);
 audit_spte_after_sync(vcpu, sptep, level);
}
