
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int audit_spte ;
 int mmu_spte_walk (struct kvm_vcpu*,int ) ;

__attribute__((used)) static void audit_vcpu_spte(struct kvm_vcpu *vcpu)
{
 mmu_spte_walk(vcpu, audit_spte);
}
