
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef size_t u16 ;
struct kvmppc_xics {int dummy; } ;
struct kvmppc_ics {struct ics_irq_state* irq_state; } ;
struct kvmppc_icp {int dummy; } ;
struct TYPE_2__ {struct kvmppc_xics* xics; } ;
struct kvm {TYPE_1__ arch; } ;
struct ics_irq_state {int resend; int masked_pending; } ;


 int EINVAL ;
 int ENODEV ;
 int XICS_DBG (char*,int ,int ,int ,int ,int ) ;
 int icp_deliver_irq (struct kvmppc_xics*,struct kvmppc_icp*,int ,int) ;
 struct kvmppc_ics* kvmppc_xics_find_ics (struct kvmppc_xics*,int ,size_t*) ;
 struct kvmppc_icp* kvmppc_xics_find_server (struct kvm*,int ) ;
 scalar_t__ write_xive (struct kvmppc_xics*,struct kvmppc_ics*,struct ics_irq_state*,int ,int ,int ) ;

int kvmppc_xics_set_xive(struct kvm *kvm, u32 irq, u32 server, u32 priority)
{
 struct kvmppc_xics *xics = kvm->arch.xics;
 struct kvmppc_icp *icp;
 struct kvmppc_ics *ics;
 struct ics_irq_state *state;
 u16 src;

 if (!xics)
  return -ENODEV;

 ics = kvmppc_xics_find_ics(xics, irq, &src);
 if (!ics)
  return -EINVAL;
 state = &ics->irq_state[src];

 icp = kvmppc_xics_find_server(kvm, server);
 if (!icp)
  return -EINVAL;

 XICS_DBG("set_xive %#x server %#x prio %#x MP:%d RS:%d\n",
   irq, server, priority,
   state->masked_pending, state->resend);

 if (write_xive(xics, ics, state, server, priority, priority))
  icp_deliver_irq(xics, icp, irq, 0);

 return 0;
}
