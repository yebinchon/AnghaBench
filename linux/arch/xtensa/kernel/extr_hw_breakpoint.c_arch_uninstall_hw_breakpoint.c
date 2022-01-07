
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int dummy; } ;
struct arch_hw_breakpoint {scalar_t__ type; } ;


 scalar_t__ SREG_DBREAKC ;
 int SREG_IBREAKENABLE ;
 int XCHAL_NUM_DBREAK ;
 int XCHAL_NUM_IBREAK ;
 scalar_t__ XTENSA_BREAKPOINT_EXECUTE ;
 int bp_on_reg ;
 struct arch_hw_breakpoint* counter_arch_bp (struct perf_event*) ;
 int free_slot (int ,int ,struct perf_event*) ;
 int this_cpu_ptr (int ) ;
 int wp_on_reg ;
 unsigned long xtensa_get_sr (int ) ;
 int xtensa_set_sr (unsigned long,int ) ;
 int xtensa_wsr (int ,scalar_t__) ;

void arch_uninstall_hw_breakpoint(struct perf_event *bp)
{
 struct arch_hw_breakpoint *info = counter_arch_bp(bp);
 int i;

 if (info->type == XTENSA_BREAKPOINT_EXECUTE) {
  unsigned long ibreakenable;


  i = free_slot(this_cpu_ptr(bp_on_reg), XCHAL_NUM_IBREAK, bp);
  if (i >= 0) {
   ibreakenable = xtensa_get_sr(SREG_IBREAKENABLE);
   xtensa_set_sr(ibreakenable & ~(1 << i),
          SREG_IBREAKENABLE);
  }
 } else {

  i = free_slot(this_cpu_ptr(wp_on_reg), XCHAL_NUM_DBREAK, bp);
  if (i >= 0)
   xtensa_wsr(0, SREG_DBREAKC + i);
 }
}
