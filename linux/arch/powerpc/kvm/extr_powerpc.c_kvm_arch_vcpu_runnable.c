
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pending_exceptions; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 scalar_t__ kvm_request_pending (struct kvm_vcpu*) ;

int kvm_arch_vcpu_runnable(struct kvm_vcpu *v)
{
 return !!(v->arch.pending_exceptions) || kvm_request_pending(v);
}
