
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct perf_event {int dummy; } ;
struct debug_info {int wps_disabled; int bps_disabled; } ;
struct TYPE_5__ {scalar_t__ type; int privilege; } ;
struct arch_hw_breakpoint {int address; TYPE_2__ ctrl; } ;
typedef enum hw_breakpoint_ops { ____Placeholder_hw_breakpoint_ops } hw_breakpoint_ops ;
typedef enum dbg_active_el { ____Placeholder_dbg_active_el } dbg_active_el ;
struct TYPE_4__ {struct debug_info debug; } ;
struct TYPE_6__ {TYPE_1__ thread; } ;


 int AARCH64_DBG_REG_BCR ;
 int AARCH64_DBG_REG_BVR ;
 int AARCH64_DBG_REG_WCR ;
 int AARCH64_DBG_REG_WVR ;
 scalar_t__ ARM_BREAKPOINT_EXECUTE ;



 scalar_t__ WARN_ONCE (int,char*) ;
 int bp_on_reg ;
 int core_num_brps ;
 int core_num_wrps ;
 struct arch_hw_breakpoint* counter_arch_bp (struct perf_event*) ;
 TYPE_3__* current ;
 int debug_exception_level (int ) ;
 int disable_debug_monitors (int) ;
 int enable_debug_monitors (int) ;
 int encode_ctrl_reg (TYPE_2__) ;
 int hw_breakpoint_slot_setup (struct perf_event**,int,struct perf_event*,int) ;
 struct perf_event** this_cpu_ptr (int ) ;
 int wp_on_reg ;
 int write_wb_reg (int,int,int) ;

__attribute__((used)) static int hw_breakpoint_control(struct perf_event *bp,
     enum hw_breakpoint_ops ops)
{
 struct arch_hw_breakpoint *info = counter_arch_bp(bp);
 struct perf_event **slots;
 struct debug_info *debug_info = &current->thread.debug;
 int i, max_slots, ctrl_reg, val_reg, reg_enable;
 enum dbg_active_el dbg_el = debug_exception_level(info->ctrl.privilege);
 u32 ctrl;

 if (info->ctrl.type == ARM_BREAKPOINT_EXECUTE) {

  ctrl_reg = AARCH64_DBG_REG_BCR;
  val_reg = AARCH64_DBG_REG_BVR;
  slots = this_cpu_ptr(bp_on_reg);
  max_slots = core_num_brps;
  reg_enable = !debug_info->bps_disabled;
 } else {

  ctrl_reg = AARCH64_DBG_REG_WCR;
  val_reg = AARCH64_DBG_REG_WVR;
  slots = this_cpu_ptr(wp_on_reg);
  max_slots = core_num_wrps;
  reg_enable = !debug_info->wps_disabled;
 }

 i = hw_breakpoint_slot_setup(slots, max_slots, bp, ops);

 if (WARN_ONCE(i < 0, "Can't find any breakpoint slot"))
  return i;

 switch (ops) {
 case 130:




  enable_debug_monitors(dbg_el);

 case 129:

  write_wb_reg(val_reg, i, info->address);


  ctrl = encode_ctrl_reg(info->ctrl);
  write_wb_reg(ctrl_reg, i,
        reg_enable ? ctrl | 0x1 : ctrl & ~0x1);
  break;
 case 128:

  write_wb_reg(ctrl_reg, i, 0);





  disable_debug_monitors(dbg_el);
  break;
 }

 return 0;
}
