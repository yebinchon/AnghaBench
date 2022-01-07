
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sve_state; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int kfree (int ) ;

void kvm_arch_vcpu_uninit(struct kvm_vcpu *vcpu)
{
 kfree(vcpu->arch.sve_state);
}
