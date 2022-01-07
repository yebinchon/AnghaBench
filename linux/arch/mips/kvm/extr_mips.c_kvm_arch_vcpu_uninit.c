
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {int (* vcpu_uninit ) (struct kvm_vcpu*) ;} ;


 TYPE_1__* kvm_mips_callbacks ;
 int stub1 (struct kvm_vcpu*) ;

void kvm_arch_vcpu_uninit(struct kvm_vcpu *vcpu)
{
 kvm_mips_callbacks->vcpu_uninit(vcpu);
}
