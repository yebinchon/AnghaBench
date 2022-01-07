
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u16 ;
struct kvmppc_xive_src_block {int lock; struct kvmppc_xive_irq_state* irq_state; } ;
struct kvmppc_xive_irq_state {int old_p; int old_q; unsigned int pt_number; int guest_priority; int pt_data; int number; int act_priority; int act_server; int ipi_data; } ;
struct kvmppc_xive {TYPE_2__* ops; } ;
struct TYPE_3__ {struct kvmppc_xive* xive; } ;
struct kvm {TYPE_1__ arch; } ;
struct irq_desc {int dummy; } ;
struct irq_data {int dummy; } ;
struct TYPE_4__ {int (* reset_mapped ) (struct kvm*,unsigned long) ;} ;


 int EINVAL ;
 int ENODEV ;
 int MASKED ;
 int XIVE_ESB_SET_PQ_01 ;
 int arch_spin_unlock (int *) ;
 int irq_data_get_irq_handler_data (struct irq_data*) ;
 unsigned int irq_desc_get_irq (struct irq_desc*) ;
 struct irq_data* irq_desc_get_irq_data (struct irq_desc*) ;
 int irq_set_vcpu_affinity (unsigned int,struct kvmppc_xive_irq_state*) ;
 scalar_t__ irqd_to_hwirq (struct irq_data*) ;
 struct kvmppc_xive_src_block* kvmppc_xive_find_source (struct kvmppc_xive*,unsigned long,size_t*) ;
 int kvmppc_xive_vp (struct kvmppc_xive*,int ) ;
 int mb () ;
 int pr_devel (char*,unsigned long,int,...) ;
 int pr_err (char*,unsigned int) ;
 int stub1 (struct kvm*,unsigned long) ;
 int xive_lock_and_mask (struct kvmppc_xive*,struct kvmppc_xive_src_block*,struct kvmppc_xive_irq_state*) ;
 int xive_native_configure_irq (unsigned int,int ,int ,int ) ;
 int xive_vm_esb_load (int *,int ) ;
 int xive_vm_source_eoi (unsigned int,int ) ;

int kvmppc_xive_set_mapped(struct kvm *kvm, unsigned long guest_irq,
      struct irq_desc *host_desc)
{
 struct kvmppc_xive *xive = kvm->arch.xive;
 struct kvmppc_xive_src_block *sb;
 struct kvmppc_xive_irq_state *state;
 struct irq_data *host_data = irq_desc_get_irq_data(host_desc);
 unsigned int host_irq = irq_desc_get_irq(host_desc);
 unsigned int hw_irq = (unsigned int)irqd_to_hwirq(host_data);
 u16 idx;
 u8 prio;
 int rc;

 if (!xive)
  return -ENODEV;

 pr_devel("set_mapped girq 0x%lx host HW irq 0x%x...\n",guest_irq, hw_irq);

 sb = kvmppc_xive_find_source(xive, guest_irq, &idx);
 if (!sb)
  return -EINVAL;
 state = &sb->irq_state[idx];
 rc = irq_set_vcpu_affinity(host_irq, state);
 if (rc) {
  pr_err("Failed to set VCPU affinity for irq %d\n", host_irq);
  return rc;
 }






 prio = xive_lock_and_mask(xive, sb, state);
 pr_devel(" old IPI prio %02x P:%d Q:%d\n", prio,
   state->old_p, state->old_q);


 xive_vm_esb_load(&state->ipi_data, XIVE_ESB_SET_PQ_01);





 if (xive->ops && xive->ops->reset_mapped)
  xive->ops->reset_mapped(kvm, guest_irq);


 state->pt_number = hw_irq;
 state->pt_data = irq_data_get_irq_handler_data(host_data);







 xive_native_configure_irq(hw_irq,
      kvmppc_xive_vp(xive, state->act_server),
      state->act_priority, state->number);
 if (prio != MASKED && !state->old_p)
  xive_vm_source_eoi(hw_irq, state->pt_data);


 state->old_p = state->old_q = 0;


 mb();
 state->guest_priority = prio;
 arch_spin_unlock(&sb->lock);

 return 0;
}
