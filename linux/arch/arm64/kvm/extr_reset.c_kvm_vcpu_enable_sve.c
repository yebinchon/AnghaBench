
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; int sve_max_vl; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int EINVAL ;
 int KVM_ARM64_GUEST_HAS_SVE ;
 scalar_t__ WARN_ON (int) ;
 int has_vhe () ;
 int kvm_sve_max_vl ;
 int system_supports_sve () ;

__attribute__((used)) static int kvm_vcpu_enable_sve(struct kvm_vcpu *vcpu)
{
 if (!system_supports_sve())
  return -EINVAL;


 if (WARN_ON(!has_vhe()))
  return -EINVAL;

 vcpu->arch.sve_max_vl = kvm_sve_max_vl;






 vcpu->arch.flags |= KVM_ARM64_GUEST_HAS_SVE;

 return 0;
}
