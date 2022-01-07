
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_event {int dummy; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 int XCHAL_NUM_DBREAK ;
 int XCHAL_NUM_IBREAK ;
 scalar_t__ XTENSA_BREAKPOINT_EXECUTE ;
 int alloc_slot (int ,int ,struct perf_event*) ;
 int bp_on_reg ;
 TYPE_1__* counter_arch_bp (struct perf_event*) ;
 int set_dbreak_regs (int,struct perf_event*) ;
 int set_ibreak_regs (int,struct perf_event*) ;
 int this_cpu_ptr (int ) ;
 int wp_on_reg ;

int arch_install_hw_breakpoint(struct perf_event *bp)
{
 int i;

 if (counter_arch_bp(bp)->type == XTENSA_BREAKPOINT_EXECUTE) {

  i = alloc_slot(this_cpu_ptr(bp_on_reg), XCHAL_NUM_IBREAK, bp);
  if (i < 0)
   return i;
  set_ibreak_regs(i, bp);

 } else {

  i = alloc_slot(this_cpu_ptr(wp_on_reg), XCHAL_NUM_DBREAK, bp);
  if (i < 0)
   return i;
  set_dbreak_regs(i, bp);
 }
 return 0;
}
