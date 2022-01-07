
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hw_perf_event_extra {int idx; scalar_t__ alloc; } ;
struct TYPE_2__ {struct hw_perf_event_extra extra_reg; } ;
struct perf_event {TYPE_1__ hw; } ;
struct intel_uncore_extra_reg {int ref; } ;
struct intel_uncore_box {struct intel_uncore_extra_reg* shared_regs; } ;


 int atomic_dec (int *) ;
 int atomic_sub (int,int *) ;
 scalar_t__ uncore_box_is_fake (struct intel_uncore_box*) ;

__attribute__((used)) static void nhmex_rbox_put_constraint(struct intel_uncore_box *box, struct perf_event *event)
{
 struct intel_uncore_extra_reg *er;
 struct hw_perf_event_extra *reg1 = &event->hw.extra_reg;
 int idx, er_idx;

 if (uncore_box_is_fake(box) || !reg1->alloc)
  return;

 idx = reg1->idx % 6;
 er_idx = idx;
 if (er_idx > 2)
  er_idx--;
 er_idx += (reg1->idx / 6) * 5;

 er = &box->shared_regs[er_idx];
 if (idx == 2 || idx == 3)
  atomic_sub(1 << ((idx - 2) * 8), &er->ref);
 else
  atomic_dec(&er->ref);

 reg1->alloc = 0;
}
