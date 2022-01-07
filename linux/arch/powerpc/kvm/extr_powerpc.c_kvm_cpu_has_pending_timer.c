
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int kvmppc_core_pending_dec (struct kvm_vcpu*) ;

int kvm_cpu_has_pending_timer(struct kvm_vcpu *vcpu)
{
 return kvmppc_core_pending_dec(vcpu);
}
