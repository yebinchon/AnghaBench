
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {int msr; } ;
struct TYPE_4__ {TYPE_1__ shregs; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;


 int MSR_TS_MASK ;
 int kvmppc_end_cede (struct kvm_vcpu*) ;

__attribute__((used)) static void kvmppc_set_msr_hv(struct kvm_vcpu *vcpu, u64 msr)
{




 if ((msr & MSR_TS_MASK) == MSR_TS_MASK)
  msr &= ~MSR_TS_MASK;
 vcpu->arch.shregs.msr = msr;
 kvmppc_end_cede(vcpu);
}
