
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
typedef void* u32 ;
struct pt_regs {int dummy; } ;
struct perf_event {int dummy; } ;
struct debug_info {int bps_disabled; int suspended_step; scalar_t__ wps_disabled; } ;
struct arch_hw_breakpoint_ctrl {int len; } ;
struct TYPE_7__ {int trigger; } ;
struct TYPE_5__ {struct debug_info debug; } ;
struct TYPE_6__ {TYPE_1__ thread; } ;


 int AARCH64_DBG_REG_BCR ;
 int AARCH64_DBG_REG_BVR ;
 int ARM_KERNEL_STEP_ACTIVE ;
 int ARM_KERNEL_STEP_NONE ;
 int ARM_KERNEL_STEP_SUSPEND ;
 int DBG_ACTIVE_EL0 ;
 int DBG_ACTIVE_EL1 ;
 int TIF_SINGLESTEP ;
 int * bp_on_reg ;
 int core_num_brps ;
 TYPE_4__* counter_arch_bp (struct perf_event*) ;
 TYPE_2__* current ;
 int decode_ctrl_reg (void*,struct arch_hw_breakpoint_ctrl*) ;
 int instruction_pointer (struct pt_regs*) ;
 scalar_t__ is_default_overflow_handler (struct perf_event*) ;
 scalar_t__ kernel_active_single_step () ;
 int kernel_enable_single_step (struct pt_regs*) ;
 int perf_bp_event (struct perf_event*,struct pt_regs*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 void* read_wb_reg (int ,int) ;
 int stepping_kernel_bp ;
 scalar_t__ test_thread_flag (int ) ;
 void* this_cpu_ptr (int *) ;
 int toggle_bp_registers (int ,int ,int ) ;
 int user_enable_single_step (TYPE_2__*) ;
 scalar_t__ user_mode (struct pt_regs*) ;

__attribute__((used)) static int breakpoint_handler(unsigned long unused, unsigned int esr,
         struct pt_regs *regs)
{
 int i, step = 0, *kernel_step;
 u32 ctrl_reg;
 u64 addr, val;
 struct perf_event *bp, **slots;
 struct debug_info *debug_info;
 struct arch_hw_breakpoint_ctrl ctrl;

 slots = this_cpu_ptr(bp_on_reg);
 addr = instruction_pointer(regs);
 debug_info = &current->thread.debug;

 for (i = 0; i < core_num_brps; ++i) {
  rcu_read_lock();

  bp = slots[i];

  if (bp == ((void*)0))
   goto unlock;


  val = read_wb_reg(AARCH64_DBG_REG_BVR, i);
  if (val != (addr & ~0x3))
   goto unlock;


  ctrl_reg = read_wb_reg(AARCH64_DBG_REG_BCR, i);
  decode_ctrl_reg(ctrl_reg, &ctrl);
  if (!((1 << (addr & 0x3)) & ctrl.len))
   goto unlock;

  counter_arch_bp(bp)->trigger = addr;
  perf_bp_event(bp, regs);


  if (is_default_overflow_handler(bp))
   step = 1;
unlock:
  rcu_read_unlock();
 }

 if (!step)
  return 0;

 if (user_mode(regs)) {
  debug_info->bps_disabled = 1;
  toggle_bp_registers(AARCH64_DBG_REG_BCR, DBG_ACTIVE_EL0, 0);


  if (debug_info->wps_disabled)
   return 0;

  if (test_thread_flag(TIF_SINGLESTEP))
   debug_info->suspended_step = 1;
  else
   user_enable_single_step(current);
 } else {
  toggle_bp_registers(AARCH64_DBG_REG_BCR, DBG_ACTIVE_EL1, 0);
  kernel_step = this_cpu_ptr(&stepping_kernel_bp);

  if (*kernel_step != ARM_KERNEL_STEP_NONE)
   return 0;

  if (kernel_active_single_step()) {
   *kernel_step = ARM_KERNEL_STEP_SUSPEND;
  } else {
   *kernel_step = ARM_KERNEL_STEP_ACTIVE;
   kernel_enable_single_step(regs);
  }
 }

 return 0;
}
