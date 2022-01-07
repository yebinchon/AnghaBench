
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union kvmppc_icp_state {scalar_t__ pending_pri; scalar_t__ mfrr; scalar_t__ xisr; scalar_t__ cppr; } ;
typedef int u64 ;
struct kvmppc_icp {union kvmppc_icp_state state; } ;
struct TYPE_2__ {struct kvmppc_icp* icp; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int KVM_REG_PPC_ICP_CPPR_SHIFT ;
 int KVM_REG_PPC_ICP_MFRR_SHIFT ;
 int KVM_REG_PPC_ICP_PPRI_SHIFT ;
 int KVM_REG_PPC_ICP_XISR_SHIFT ;

u64 kvmppc_xics_get_icp(struct kvm_vcpu *vcpu)
{
 struct kvmppc_icp *icp = vcpu->arch.icp;
 union kvmppc_icp_state state;

 if (!icp)
  return 0;
 state = icp->state;
 return ((u64)state.cppr << KVM_REG_PPC_ICP_CPPR_SHIFT) |
  ((u64)state.xisr << KVM_REG_PPC_ICP_XISR_SHIFT) |
  ((u64)state.mfrr << KVM_REG_PPC_ICP_MFRR_SHIFT) |
  ((u64)state.pending_pri << KVM_REG_PPC_ICP_PPRI_SHIFT);
}
