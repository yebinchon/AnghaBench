
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct perf_event {int dummy; } ;
struct TYPE_2__ {scalar_t__ type; scalar_t__ enabled; } ;
struct arch_hw_breakpoint {int address; int trigger; TYPE_1__ ctrl; TYPE_1__ step_ctrl; } ;


 int ARM_BASE_BCR ;
 int ARM_BASE_BVR ;
 int ARM_BASE_WCR ;
 int ARM_BASE_WVR ;
 scalar_t__ ARM_BREAKPOINT_EXECUTE ;
 int EBUSY ;
 int bp_on_reg ;
 int core_num_brps ;
 int core_num_wrps ;
 struct arch_hw_breakpoint* counter_arch_bp (struct perf_event*) ;
 int encode_ctrl_reg (TYPE_1__) ;
 int pr_warn (char*) ;
 struct perf_event** this_cpu_ptr (int ) ;
 int wp_on_reg ;
 int write_wb_reg (int,int) ;

int arch_install_hw_breakpoint(struct perf_event *bp)
{
 struct arch_hw_breakpoint *info = counter_arch_bp(bp);
 struct perf_event **slot, **slots;
 int i, max_slots, ctrl_base, val_base;
 u32 addr, ctrl;

 addr = info->address;
 ctrl = encode_ctrl_reg(info->ctrl) | 0x1;

 if (info->ctrl.type == ARM_BREAKPOINT_EXECUTE) {

  ctrl_base = ARM_BASE_BCR;
  val_base = ARM_BASE_BVR;
  slots = this_cpu_ptr(bp_on_reg);
  max_slots = core_num_brps;
 } else {

  ctrl_base = ARM_BASE_WCR;
  val_base = ARM_BASE_WVR;
  slots = this_cpu_ptr(wp_on_reg);
  max_slots = core_num_wrps;
 }

 for (i = 0; i < max_slots; ++i) {
  slot = &slots[i];

  if (!*slot) {
   *slot = bp;
   break;
  }
 }

 if (i == max_slots) {
  pr_warn("Can't find any breakpoint slot\n");
  return -EBUSY;
 }


 if (info->step_ctrl.enabled) {
  addr = info->trigger & ~0x3;
  ctrl = encode_ctrl_reg(info->step_ctrl);
  if (info->ctrl.type != ARM_BREAKPOINT_EXECUTE) {
   i = 0;
   ctrl_base = ARM_BASE_BCR + core_num_brps;
   val_base = ARM_BASE_BVR + core_num_brps;
  }
 }


 write_wb_reg(val_base + i, addr);


 write_wb_reg(ctrl_base + i, ctrl);
 return 0;
}
