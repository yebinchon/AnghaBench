
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
typedef scalar_t__ u32 ;
struct kvmppc_xive_src_block {int lock; } ;
struct kvmppc_xive_irq_state {scalar_t__ act_server; void* act_priority; scalar_t__ eisn; } ;
struct kvmppc_xive {struct kvm* kvm; } ;
struct kvm {int dummy; } ;


 void* MASKED ;
 int arch_spin_lock (int *) ;
 int arch_spin_unlock (int *) ;
 int kvmppc_xive_select_irq (struct kvmppc_xive_irq_state*,scalar_t__*,int *) ;
 int kvmppc_xive_select_target (struct kvm*,scalar_t__*,void*) ;
 int kvmppc_xive_vp (struct kvmppc_xive*,scalar_t__) ;
 int pr_devel (char*,void*,scalar_t__,int,scalar_t__,void*) ;
 int xive_native_configure_irq (scalar_t__,int ,void*,scalar_t__) ;

__attribute__((used)) static int kvmppc_xive_native_update_source_config(struct kvmppc_xive *xive,
     struct kvmppc_xive_src_block *sb,
     struct kvmppc_xive_irq_state *state,
     u32 server, u8 priority, bool masked,
     u32 eisn)
{
 struct kvm *kvm = xive->kvm;
 u32 hw_num;
 int rc = 0;

 arch_spin_lock(&sb->lock);

 if (state->act_server == server && state->act_priority == priority &&
     state->eisn == eisn)
  goto unlock;

 pr_devel("new_act_prio=%d new_act_server=%d mask=%d act_server=%d act_prio=%d\n",
   priority, server, masked, state->act_server,
   state->act_priority);

 kvmppc_xive_select_irq(state, &hw_num, ((void*)0));

 if (priority != MASKED && !masked) {
  rc = kvmppc_xive_select_target(kvm, &server, priority);
  if (rc)
   goto unlock;

  state->act_priority = priority;
  state->act_server = server;
  state->eisn = eisn;

  rc = xive_native_configure_irq(hw_num,
            kvmppc_xive_vp(xive, server),
            priority, eisn);
 } else {
  state->act_priority = MASKED;
  state->act_server = 0;
  state->eisn = 0;

  rc = xive_native_configure_irq(hw_num, 0, MASKED, 0);
 }

unlock:
 arch_spin_unlock(&sb->lock);
 return rc;
}
