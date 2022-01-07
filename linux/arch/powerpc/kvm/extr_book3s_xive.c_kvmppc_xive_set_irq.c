
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef size_t u16 ;
struct kvmppc_xive_src_block {struct kvmppc_xive_irq_state* irq_state; } ;
struct kvmppc_xive_irq_state {int asserted; int ipi_data; scalar_t__ lsi; scalar_t__ pt_number; int valid; } ;
struct kvmppc_xive {int dummy; } ;
struct TYPE_2__ {struct kvmppc_xive* xive; } ;
struct kvm {TYPE_1__ arch; } ;


 int EINVAL ;
 int ENODEV ;
 int KVM_INTERRUPT_SET_LEVEL ;
 int KVM_INTERRUPT_UNSET ;
 struct kvmppc_xive_src_block* kvmppc_xive_find_source (struct kvmppc_xive*,int ,size_t*) ;
 int xive_irq_trigger (int *) ;

int kvmppc_xive_set_irq(struct kvm *kvm, int irq_source_id, u32 irq, int level,
   bool line_status)
{
 struct kvmppc_xive *xive = kvm->arch.xive;
 struct kvmppc_xive_src_block *sb;
 struct kvmppc_xive_irq_state *state;
 u16 idx;

 if (!xive)
  return -ENODEV;

 sb = kvmppc_xive_find_source(xive, irq, &idx);
 if (!sb)
  return -EINVAL;


 state = &sb->irq_state[idx];
 if (!state->valid)
  return -EINVAL;


 if (state->pt_number)
  return -EINVAL;

 if ((level == 1 && state->lsi) || level == KVM_INTERRUPT_SET_LEVEL)
  state->asserted = 1;
 else if (level == 0 || level == KVM_INTERRUPT_UNSET) {
  state->asserted = 0;
  return 0;
 }


 xive_irq_trigger(&state->ipi_data);

 return 0;
}
