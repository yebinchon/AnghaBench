
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int kvmppc_realmode_mc_power7 (struct kvm_vcpu*) ;

void kvmppc_realmode_machine_check(struct kvm_vcpu *vcpu)
{
 kvmppc_realmode_mc_power7(vcpu);
}
