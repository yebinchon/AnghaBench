
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct perf_event_attr {int dummy; } ;
struct TYPE_3__ {int target; } ;
struct perf_event {TYPE_1__ hw; } ;
struct TYPE_4__ {int len; scalar_t__ type; } ;
struct arch_hw_breakpoint {int address; TYPE_2__ ctrl; } ;


 int ARM_BREAKPOINT_LEN_1 ;
 int ARM_BREAKPOINT_LEN_2 ;
 int ARM_BREAKPOINT_LEN_8 ;
 scalar_t__ ARM_BREAKPOINT_LOAD ;
 scalar_t__ ARM_BREAKPOINT_STORE ;
 int EINVAL ;
 int ENODEV ;
 int EPERM ;
 int arch_build_bp_info (struct perf_event*,struct perf_event_attr const*,struct arch_hw_breakpoint*) ;
 scalar_t__ arch_check_bp_in_kernelspace (struct arch_hw_breakpoint*) ;
 int core_has_mismatch_brps () ;
 int debug_exception_updates_fsr () ;
 scalar_t__ is_default_overflow_handler (struct perf_event*) ;
 int monitor_mode_enabled () ;

int hw_breakpoint_arch_parse(struct perf_event *bp,
        const struct perf_event_attr *attr,
        struct arch_hw_breakpoint *hw)
{
 int ret = 0;
 u32 offset, alignment_mask = 0x3;


 if (!monitor_mode_enabled())
  return -ENODEV;


 ret = arch_build_bp_info(bp, attr, hw);
 if (ret)
  goto out;


 if (hw->ctrl.len == ARM_BREAKPOINT_LEN_8)
  alignment_mask = 0x7;
 offset = hw->address & alignment_mask;
 switch (offset) {
 case 0:

  break;
 case 1:
 case 2:

  if (hw->ctrl.len == ARM_BREAKPOINT_LEN_2)
   break;

 case 3:

  if (hw->ctrl.len == ARM_BREAKPOINT_LEN_1)
   break;

 default:
  ret = -EINVAL;
  goto out;
 }

 hw->address &= ~alignment_mask;
 hw->ctrl.len <<= offset;

 if (is_default_overflow_handler(bp)) {




  if (!core_has_mismatch_brps())
   return -EINVAL;


  if (arch_check_bp_in_kernelspace(hw))
   return -EPERM;





  if (!bp->hw.target)
   return -EINVAL;





  if (!debug_exception_updates_fsr() &&
      (hw->ctrl.type == ARM_BREAKPOINT_LOAD ||
       hw->ctrl.type == ARM_BREAKPOINT_STORE))
   return -EINVAL;
 }

out:
 return ret;
}
