
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long msr; } ;
struct TYPE_4__ {unsigned long intr_msr; TYPE_1__ shregs; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;


 scalar_t__ MSR_TM_TRANSACTIONAL (unsigned long) ;
 unsigned long MSR_TS_MASK ;
 unsigned long MSR_TS_S ;
 int kvmppc_set_msr (struct kvm_vcpu*,unsigned long) ;

__attribute__((used)) static void kvmppc_mmu_book3s_64_hv_reset_msr(struct kvm_vcpu *vcpu)
{
 unsigned long msr = vcpu->arch.intr_msr;


 if (MSR_TM_TRANSACTIONAL(vcpu->arch.shregs.msr))
  msr |= MSR_TS_S;
 else
  msr |= vcpu->arch.shregs.msr & MSR_TS_MASK;
 kvmppc_set_msr(vcpu, msr);
}
