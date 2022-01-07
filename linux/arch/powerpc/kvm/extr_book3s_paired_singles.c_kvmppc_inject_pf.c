
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;
typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct kvm_vcpu {int dummy; } ;


 int BOOK3S_INTERRUPT_DATA_STORAGE ;
 int kvmppc_book3s_queue_irqprio (struct kvm_vcpu*,int ) ;
 scalar_t__ kvmppc_get_msr (struct kvm_vcpu*) ;
 int kvmppc_set_dar (struct kvm_vcpu*,int ) ;
 int kvmppc_set_dsisr (struct kvm_vcpu*,scalar_t__) ;
 scalar_t__ kvmppc_set_field (scalar_t__,int,int,int) ;
 int kvmppc_set_msr (struct kvm_vcpu*,scalar_t__) ;

__attribute__((used)) static void kvmppc_inject_pf(struct kvm_vcpu *vcpu, ulong eaddr, bool is_store)
{
 u32 dsisr;
 u64 msr = kvmppc_get_msr(vcpu);

 msr = kvmppc_set_field(msr, 33, 36, 0);
 msr = kvmppc_set_field(msr, 42, 47, 0);
 kvmppc_set_msr(vcpu, msr);
 kvmppc_set_dar(vcpu, eaddr);

 dsisr = kvmppc_set_field(0, 33, 33, 1);
 if (is_store)
  dsisr = kvmppc_set_field(dsisr, 38, 38, 1);
 kvmppc_set_dsisr(vcpu, dsisr);
 kvmppc_book3s_queue_irqprio(vcpu, BOOK3S_INTERRUPT_DATA_STORAGE);
}
