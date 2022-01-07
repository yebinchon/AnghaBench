
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct kvmppc_xive_vcpu {scalar_t__ mfrr; scalar_t__ cppr; } ;
struct TYPE_2__ {struct kvmppc_xive_vcpu* xive_vcpu; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int KVM_REG_PPC_ICP_CPPR_SHIFT ;
 int KVM_REG_PPC_ICP_MFRR_SHIFT ;
 int KVM_REG_PPC_ICP_PPRI_SHIFT ;

u64 kvmppc_xive_get_icp(struct kvm_vcpu *vcpu)
{
 struct kvmppc_xive_vcpu *xc = vcpu->arch.xive_vcpu;

 if (!xc)
  return 0;


 return (u64)xc->cppr << KVM_REG_PPC_ICP_CPPR_SHIFT |
        (u64)xc->mfrr << KVM_REG_PPC_ICP_MFRR_SHIFT |
        (u64)0xff << KVM_REG_PPC_ICP_PPRI_SHIFT;
}
