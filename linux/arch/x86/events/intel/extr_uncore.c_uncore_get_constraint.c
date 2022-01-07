
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hw_perf_event_extra {size_t idx; int alloc; scalar_t__ config; } ;
struct TYPE_2__ {struct hw_perf_event_extra branch_reg; struct hw_perf_event_extra extra_reg; } ;
struct perf_event {TYPE_1__ hw; } ;
struct intel_uncore_extra_reg {scalar_t__ config1; scalar_t__ config2; int lock; int ref; } ;
struct intel_uncore_box {struct intel_uncore_extra_reg* shared_regs; } ;
struct event_constraint {int dummy; } ;


 size_t EXTRA_REG_NONE ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int uncore_box_is_fake (struct intel_uncore_box*) ;
 struct event_constraint uncore_constraint_empty ;

struct event_constraint *
uncore_get_constraint(struct intel_uncore_box *box, struct perf_event *event)
{
 struct intel_uncore_extra_reg *er;
 struct hw_perf_event_extra *reg1 = &event->hw.extra_reg;
 struct hw_perf_event_extra *reg2 = &event->hw.branch_reg;
 unsigned long flags;
 bool ok = 0;






 if (reg1->idx == EXTRA_REG_NONE ||
     (!uncore_box_is_fake(box) && reg1->alloc))
  return ((void*)0);

 er = &box->shared_regs[reg1->idx];
 raw_spin_lock_irqsave(&er->lock, flags);
 if (!atomic_read(&er->ref) ||
     (er->config1 == reg1->config && er->config2 == reg2->config)) {
  atomic_inc(&er->ref);
  er->config1 = reg1->config;
  er->config2 = reg2->config;
  ok = 1;
 }
 raw_spin_unlock_irqrestore(&er->lock, flags);

 if (ok) {
  if (!uncore_box_is_fake(box))
   reg1->alloc = 1;
  return ((void*)0);
 }

 return &uncore_constraint_empty;
}
