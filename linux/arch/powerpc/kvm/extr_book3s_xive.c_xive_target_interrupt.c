
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct kvmppc_xive_irq_state {scalar_t__ act_priority; int number; int act_server; } ;
struct kvmppc_xive {int dummy; } ;
struct TYPE_2__ {struct kvmppc_xive* xive; } ;
struct kvm {TYPE_1__ arch; } ;


 scalar_t__ MASKED ;
 int kvmppc_xive_select_irq (struct kvmppc_xive_irq_state*,int *,int *) ;
 int kvmppc_xive_select_target (struct kvm*,int *,scalar_t__) ;
 int kvmppc_xive_vp (struct kvmppc_xive*,int ) ;
 int xive_inc_q_pending (struct kvm*,int ,scalar_t__) ;
 int xive_native_configure_irq (int ,int ,scalar_t__,int ) ;

__attribute__((used)) static int xive_target_interrupt(struct kvm *kvm,
     struct kvmppc_xive_irq_state *state,
     u32 server, u8 prio)
{
 struct kvmppc_xive *xive = kvm->arch.xive;
 u32 hw_num;
 int rc;






 rc = kvmppc_xive_select_target(kvm, &server, prio);





 if (rc)
  return rc;






 if (state->act_priority != MASKED)
  xive_inc_q_pending(kvm,
       state->act_server,
       state->act_priority);



 state->act_priority = prio;
 state->act_server = server;


 kvmppc_xive_select_irq(state, &hw_num, ((void*)0));

 return xive_native_configure_irq(hw_num,
      kvmppc_xive_vp(xive, server),
      prio, state->number);
}
