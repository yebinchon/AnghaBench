
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; int features; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int EINVAL ;
 int KVM_ARM64_GUEST_HAS_PTRAUTH ;
 int KVM_ARM_VCPU_PTRAUTH_ADDRESS ;
 int KVM_ARM_VCPU_PTRAUTH_GENERIC ;
 int has_vhe () ;
 int system_supports_address_auth () ;
 int system_supports_generic_auth () ;
 int test_bit (int ,int ) ;

__attribute__((used)) static int kvm_vcpu_enable_ptrauth(struct kvm_vcpu *vcpu)
{

 if (!has_vhe())
  return -EINVAL;

 if (!system_supports_address_auth() ||
     !system_supports_generic_auth())
  return -EINVAL;




 if (!test_bit(KVM_ARM_VCPU_PTRAUTH_ADDRESS, vcpu->arch.features) ||
     !test_bit(KVM_ARM_VCPU_PTRAUTH_GENERIC, vcpu->arch.features))
  return -EINVAL;

 vcpu->arch.flags |= KVM_ARM64_GUEST_HAS_PTRAUTH;
 return 0;
}
