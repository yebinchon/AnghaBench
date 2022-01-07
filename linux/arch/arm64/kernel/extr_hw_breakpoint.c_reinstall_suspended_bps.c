
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct debug_info {scalar_t__ wps_disabled; scalar_t__ suspended_step; scalar_t__ bps_disabled; } ;
struct TYPE_4__ {struct debug_info debug; } ;
struct TYPE_5__ {TYPE_1__ thread; } ;


 int AARCH64_DBG_REG_BCR ;
 int AARCH64_DBG_REG_WCR ;
 int ARM_KERNEL_STEP_NONE ;
 int ARM_KERNEL_STEP_SUSPEND ;
 int DBG_ACTIVE_EL0 ;
 int DBG_ACTIVE_EL1 ;
 TYPE_2__* current ;
 int kernel_disable_single_step () ;
 int stepping_kernel_bp ;
 int* this_cpu_ptr (int *) ;
 int toggle_bp_registers (int ,int ,int) ;
 int user_disable_single_step (TYPE_2__*) ;
 scalar_t__ user_mode (struct pt_regs*) ;

int reinstall_suspended_bps(struct pt_regs *regs)
{
 struct debug_info *debug_info = &current->thread.debug;
 int handled_exception = 0, *kernel_step;

 kernel_step = this_cpu_ptr(&stepping_kernel_bp);






 if (user_mode(regs)) {
  if (debug_info->bps_disabled) {
   debug_info->bps_disabled = 0;
   toggle_bp_registers(AARCH64_DBG_REG_BCR, DBG_ACTIVE_EL0, 1);
   handled_exception = 1;
  }

  if (debug_info->wps_disabled) {
   debug_info->wps_disabled = 0;
   toggle_bp_registers(AARCH64_DBG_REG_WCR, DBG_ACTIVE_EL0, 1);
   handled_exception = 1;
  }

  if (handled_exception) {
   if (debug_info->suspended_step) {
    debug_info->suspended_step = 0;

    handled_exception = 0;
   } else {
    user_disable_single_step(current);
   }
  }
 } else if (*kernel_step != ARM_KERNEL_STEP_NONE) {
  toggle_bp_registers(AARCH64_DBG_REG_BCR, DBG_ACTIVE_EL1, 1);
  toggle_bp_registers(AARCH64_DBG_REG_WCR, DBG_ACTIVE_EL1, 1);

  if (!debug_info->wps_disabled)
   toggle_bp_registers(AARCH64_DBG_REG_WCR, DBG_ACTIVE_EL0, 1);

  if (*kernel_step != ARM_KERNEL_STEP_SUSPEND) {
   kernel_disable_single_step();
   handled_exception = 1;
  } else {
   handled_exception = 0;
  }

  *kernel_step = ARM_KERNEL_STEP_NONE;
 }

 return !handled_exception;
}
