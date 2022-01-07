
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int kvm_emulate_instruction (struct kvm_vcpu*,int ) ;

__attribute__((used)) static int handle_invd(struct kvm_vcpu *vcpu)
{
 return kvm_emulate_instruction(vcpu, 0);
}
