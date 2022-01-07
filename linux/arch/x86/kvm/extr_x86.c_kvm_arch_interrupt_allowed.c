
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {int (* interrupt_allowed ) (struct kvm_vcpu*) ;} ;


 TYPE_1__* kvm_x86_ops ;
 int stub1 (struct kvm_vcpu*) ;

int kvm_arch_interrupt_allowed(struct kvm_vcpu *vcpu)
{
 return kvm_x86_ops->interrupt_allowed(vcpu);
}
