
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned long u32 ;
struct pt_regs {int dummy; } ;
struct TYPE_3__ {unsigned long bp_addr; } ;
struct perf_event {TYPE_1__ attr; } ;
struct arch_hw_breakpoint_ctrl {int len; } ;
struct TYPE_4__ {scalar_t__ len; } ;
struct arch_hw_breakpoint {unsigned long trigger; TYPE_2__ ctrl; } ;


 scalar_t__ ARM_BASE_WCR ;
 scalar_t__ ARM_BASE_WVR ;
 scalar_t__ ARM_BREAKPOINT_LEN_8 ;
 scalar_t__ ARM_DEBUG_ARCH_V7_1 ;
 unsigned int ARM_FSR_ACCESS_MASK ;
 int BUG_ON (int) ;
 int HW_BREAKPOINT_R ;
 int HW_BREAKPOINT_W ;
 int core_num_wrps ;
 struct arch_hw_breakpoint* counter_arch_bp (struct perf_event*) ;
 scalar_t__ debug_arch ;
 scalar_t__ debug_exception_updates_fsr () ;
 int decode_ctrl_reg (unsigned long,struct arch_hw_breakpoint_ctrl*) ;
 int enable_single_step (struct perf_event*,int ) ;
 int hw_breakpoint_type (struct perf_event*) ;
 int instruction_pointer (struct pt_regs*) ;
 scalar_t__ is_default_overflow_handler (struct perf_event*) ;
 int perf_bp_event (struct perf_event*,struct pt_regs*) ;
 int pr_debug (char*,unsigned long) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 unsigned long read_wb_reg (scalar_t__) ;
 struct perf_event** this_cpu_ptr (int ) ;
 int wp_on_reg ;

__attribute__((used)) static void watchpoint_handler(unsigned long addr, unsigned int fsr,
          struct pt_regs *regs)
{
 int i, access;
 u32 val, ctrl_reg, alignment_mask;
 struct perf_event *wp, **slots;
 struct arch_hw_breakpoint *info;
 struct arch_hw_breakpoint_ctrl ctrl;

 slots = this_cpu_ptr(wp_on_reg);

 for (i = 0; i < core_num_wrps; ++i) {
  rcu_read_lock();

  wp = slots[i];

  if (wp == ((void*)0))
   goto unlock;

  info = counter_arch_bp(wp);






  if (debug_arch < ARM_DEBUG_ARCH_V7_1) {
   BUG_ON(i > 0);
   info->trigger = wp->attr.bp_addr;
  } else {
   if (info->ctrl.len == ARM_BREAKPOINT_LEN_8)
    alignment_mask = 0x7;
   else
    alignment_mask = 0x3;


   val = read_wb_reg(ARM_BASE_WVR + i);
   if (val != (addr & ~alignment_mask))
    goto unlock;


   ctrl_reg = read_wb_reg(ARM_BASE_WCR + i);
   decode_ctrl_reg(ctrl_reg, &ctrl);
   if (!((1 << (addr & alignment_mask)) & ctrl.len))
    goto unlock;


   if (debug_exception_updates_fsr()) {
    access = (fsr & ARM_FSR_ACCESS_MASK) ?
       HW_BREAKPOINT_W : HW_BREAKPOINT_R;
    if (!(access & hw_breakpoint_type(wp)))
     goto unlock;
   }


   info->trigger = addr;
  }

  pr_debug("watchpoint fired: address = 0x%x\n", info->trigger);
  perf_bp_event(wp, regs);






  if (is_default_overflow_handler(wp))
   enable_single_step(wp, instruction_pointer(regs));

unlock:
  rcu_read_unlock();
 }
}
