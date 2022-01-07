
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {int (* reset_msr ) (struct kvm_vcpu*) ;} ;
struct TYPE_4__ {TYPE_1__ mmu; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;


 int kvmppc_get_msr (struct kvm_vcpu*) ;
 int kvmppc_get_pc (struct kvm_vcpu*) ;
 scalar_t__ kvmppc_interrupt_offset (struct kvm_vcpu*) ;
 int kvmppc_set_pc (struct kvm_vcpu*,scalar_t__) ;
 int kvmppc_set_srr0 (struct kvm_vcpu*,int ) ;
 int kvmppc_set_srr1 (struct kvm_vcpu*,int) ;
 int kvmppc_unfixup_split_real (struct kvm_vcpu*) ;
 int stub1 (struct kvm_vcpu*) ;

void kvmppc_inject_interrupt(struct kvm_vcpu *vcpu, int vec, u64 flags)
{
 kvmppc_unfixup_split_real(vcpu);
 kvmppc_set_srr0(vcpu, kvmppc_get_pc(vcpu));
 kvmppc_set_srr1(vcpu, (kvmppc_get_msr(vcpu) & ~0x783f0000ul) | flags);
 kvmppc_set_pc(vcpu, kvmppc_interrupt_offset(vcpu) + vec);
 vcpu->arch.mmu.reset_msr(vcpu);
}
