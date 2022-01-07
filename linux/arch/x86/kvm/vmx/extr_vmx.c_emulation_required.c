
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 scalar_t__ emulate_invalid_guest_state ;
 int guest_state_valid (struct kvm_vcpu*) ;

__attribute__((used)) static bool emulation_required(struct kvm_vcpu *vcpu)
{
 return emulate_invalid_guest_state && !guest_state_valid(vcpu);
}
