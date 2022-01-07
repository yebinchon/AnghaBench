
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pending_exceptions; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;



int kvm_arch_vcpu_runnable(struct kvm_vcpu *vcpu)
{
 return !!(vcpu->arch.pending_exceptions);
}
