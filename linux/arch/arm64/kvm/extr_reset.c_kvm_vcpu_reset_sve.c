
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sve_state; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int memset (int ,int ,int ) ;
 scalar_t__ vcpu_has_sve (struct kvm_vcpu*) ;
 int vcpu_sve_state_size (struct kvm_vcpu*) ;

__attribute__((used)) static void kvm_vcpu_reset_sve(struct kvm_vcpu *vcpu)
{
 if (vcpu_has_sve(vcpu))
  memset(vcpu->arch.sve_state, 0, vcpu_sve_state_size(vcpu));
}
