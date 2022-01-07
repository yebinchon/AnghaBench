
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;
struct kvm_vcpu {int dummy; } ;


 int BOOK3S_INTERRUPT_DATA_STORAGE ;
 int kvmppc_inject_interrupt (struct kvm_vcpu*,int ,int ) ;
 int kvmppc_set_dar (struct kvm_vcpu*,int ) ;
 int kvmppc_set_dsisr (struct kvm_vcpu*,int ) ;

void kvmppc_core_queue_data_storage(struct kvm_vcpu *vcpu, ulong dar,
        ulong flags)
{
 kvmppc_set_dar(vcpu, dar);
 kvmppc_set_dsisr(vcpu, flags);
 kvmppc_inject_interrupt(vcpu, BOOK3S_INTERRUPT_DATA_STORAGE, 0);
}
