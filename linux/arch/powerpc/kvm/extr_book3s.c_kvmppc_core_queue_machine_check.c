
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;
struct kvm_vcpu {int dummy; } ;


 int BOOK3S_INTERRUPT_MACHINE_CHECK ;
 int kvmppc_inject_interrupt (struct kvm_vcpu*,int ,int ) ;

void kvmppc_core_queue_machine_check(struct kvm_vcpu *vcpu, ulong flags)
{

 kvmppc_inject_interrupt(vcpu, BOOK3S_INTERRUPT_MACHINE_CHECK, flags);
}
