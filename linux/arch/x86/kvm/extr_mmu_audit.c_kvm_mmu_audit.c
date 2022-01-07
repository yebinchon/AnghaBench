
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int __kvm_mmu_audit (struct kvm_vcpu*,int) ;
 int mmu_audit_key ;
 scalar_t__ static_key_false (int *) ;

__attribute__((used)) static inline void kvm_mmu_audit(struct kvm_vcpu *vcpu, int point)
{
 if (static_key_false((&mmu_audit_key)))
  __kvm_mmu_audit(vcpu, point);
}
