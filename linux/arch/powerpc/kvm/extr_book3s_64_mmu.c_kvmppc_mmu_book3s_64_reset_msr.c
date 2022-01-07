
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long intr_msr; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 scalar_t__ MSR_TM_TRANSACTIONAL (unsigned long) ;
 unsigned long MSR_TS_MASK ;
 unsigned long MSR_TS_S ;
 unsigned long kvmppc_get_msr (struct kvm_vcpu*) ;
 int kvmppc_set_msr (struct kvm_vcpu*,unsigned long) ;

__attribute__((used)) static void kvmppc_mmu_book3s_64_reset_msr(struct kvm_vcpu *vcpu)
{
 unsigned long msr = vcpu->arch.intr_msr;
 unsigned long cur_msr = kvmppc_get_msr(vcpu);


 if (MSR_TM_TRANSACTIONAL(cur_msr))
  msr |= MSR_TS_S;
 else
  msr |= cur_msr & MSR_TS_MASK;

 kvmppc_set_msr(vcpu, msr);
}
