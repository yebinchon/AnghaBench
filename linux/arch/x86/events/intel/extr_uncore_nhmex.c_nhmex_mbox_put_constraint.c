
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hw_perf_event_extra {int alloc; int idx; } ;
struct TYPE_2__ {struct hw_perf_event_extra branch_reg; struct hw_perf_event_extra extra_reg; } ;
struct perf_event {TYPE_1__ hw; } ;
struct intel_uncore_box {int dummy; } ;


 int __BITS_VALUE (int ,int,int) ;
 int nhmex_mbox_put_shared_reg (struct intel_uncore_box*,int ) ;
 scalar_t__ uncore_box_is_fake (struct intel_uncore_box*) ;

__attribute__((used)) static void nhmex_mbox_put_constraint(struct intel_uncore_box *box, struct perf_event *event)
{
 struct hw_perf_event_extra *reg1 = &event->hw.extra_reg;
 struct hw_perf_event_extra *reg2 = &event->hw.branch_reg;

 if (uncore_box_is_fake(box))
  return;

 if (reg1->alloc & 0x1)
  nhmex_mbox_put_shared_reg(box, __BITS_VALUE(reg1->idx, 0, 8));
 if (reg1->alloc & 0x2)
  nhmex_mbox_put_shared_reg(box, __BITS_VALUE(reg1->idx, 1, 8));
 reg1->alloc = 0;

 if (reg2->alloc) {
  nhmex_mbox_put_shared_reg(box, reg2->idx);
  reg2->alloc = 0;
 }
}
