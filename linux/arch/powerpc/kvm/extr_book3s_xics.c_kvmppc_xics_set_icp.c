
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


union kvmppc_icp_state {int cppr; int xisr; int mfrr; int pending_pri; int need_resend; scalar_t__ raw; } ;
typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct kvmppc_xics {int dummy; } ;
struct kvmppc_ics {int dummy; } ;
struct kvmppc_icp {int state; int vcpu; } ;
struct TYPE_4__ {struct kvmppc_icp* icp; } ;
struct kvm_vcpu {TYPE_3__* kvm; TYPE_1__ arch; } ;
struct TYPE_5__ {struct kvmppc_xics* xics; } ;
struct TYPE_6__ {TYPE_2__ arch; } ;


 int BOOK3S_INTERRUPT_EXTERNAL ;
 int EINVAL ;
 int ENOENT ;
 int KVM_REG_PPC_ICP_CPPR_SHIFT ;
 int KVM_REG_PPC_ICP_MFRR_SHIFT ;
 int KVM_REG_PPC_ICP_PPRI_SHIFT ;
 int KVM_REG_PPC_ICP_XISR_MASK ;
 int KVM_REG_PPC_ICP_XISR_SHIFT ;
 union kvmppc_icp_state READ_ONCE (int ) ;
 int XICS_IPI ;
 int icp_check_resend (struct kvmppc_xics*,struct kvmppc_icp*) ;
 int icp_try_update (struct kvmppc_icp*,union kvmppc_icp_state,union kvmppc_icp_state,int) ;
 int kvmppc_book3s_dequeue_irqprio (int ,int ) ;
 struct kvmppc_ics* kvmppc_xics_find_ics (struct kvmppc_xics*,int,int *) ;

int kvmppc_xics_set_icp(struct kvm_vcpu *vcpu, u64 icpval)
{
 struct kvmppc_icp *icp = vcpu->arch.icp;
 struct kvmppc_xics *xics = vcpu->kvm->arch.xics;
 union kvmppc_icp_state old_state, new_state;
 struct kvmppc_ics *ics;
 u8 cppr, mfrr, pending_pri;
 u32 xisr;
 u16 src;
 bool resend;

 if (!icp || !xics)
  return -ENOENT;

 cppr = icpval >> KVM_REG_PPC_ICP_CPPR_SHIFT;
 xisr = (icpval >> KVM_REG_PPC_ICP_XISR_SHIFT) &
  KVM_REG_PPC_ICP_XISR_MASK;
 mfrr = icpval >> KVM_REG_PPC_ICP_MFRR_SHIFT;
 pending_pri = icpval >> KVM_REG_PPC_ICP_PPRI_SHIFT;


 if (xisr == 0) {
  if (pending_pri != 0xff)
   return -EINVAL;
 } else if (xisr == XICS_IPI) {
  if (pending_pri != mfrr || pending_pri >= cppr)
   return -EINVAL;
 } else {
  if (pending_pri >= mfrr || pending_pri >= cppr)
   return -EINVAL;
  ics = kvmppc_xics_find_ics(xics, xisr, &src);
  if (!ics)
   return -EINVAL;
 }

 new_state.raw = 0;
 new_state.cppr = cppr;
 new_state.xisr = xisr;
 new_state.mfrr = mfrr;
 new_state.pending_pri = pending_pri;





 kvmppc_book3s_dequeue_irqprio(icp->vcpu, BOOK3S_INTERRUPT_EXTERNAL);
 do {
  old_state = READ_ONCE(icp->state);

  if (new_state.mfrr <= old_state.mfrr) {
   resend = 0;
   new_state.need_resend = old_state.need_resend;
  } else {
   resend = old_state.need_resend;
   new_state.need_resend = 0;
  }
 } while (!icp_try_update(icp, old_state, new_state, 0));

 if (resend)
  icp_check_resend(xics, icp);

 return 0;
}
