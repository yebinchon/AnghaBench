
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int BOOK3S_INTERRUPT_VSX ;
 int kvmppc_inject_interrupt (struct kvm_vcpu*,int ,int ) ;

void kvmppc_core_queue_vsx_unavail(struct kvm_vcpu *vcpu)
{

 kvmppc_inject_interrupt(vcpu, BOOK3S_INTERRUPT_VSX, 0);
}
