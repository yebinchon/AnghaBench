
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct perf_event_attr {int dummy; } ;
struct TYPE_4__ {scalar_t__ target; } ;
struct perf_event {TYPE_2__ hw; } ;
struct TYPE_3__ {int len; scalar_t__ type; scalar_t__ privilege; } ;
struct arch_hw_breakpoint {int address; TYPE_1__ ctrl; } ;


 scalar_t__ AARCH64_BREAKPOINT_EL1 ;
 scalar_t__ ARM_BREAKPOINT_EXECUTE ;
 int ARM_BREAKPOINT_LEN_1 ;
 int ARM_BREAKPOINT_LEN_2 ;
 int ARM_BREAKPOINT_LEN_8 ;
 int EINVAL ;
 int arch_build_bp_info (struct perf_event*,struct perf_event_attr const*,struct arch_hw_breakpoint*) ;
 scalar_t__ is_compat_bp (struct perf_event*) ;

int hw_breakpoint_arch_parse(struct perf_event *bp,
        const struct perf_event_attr *attr,
        struct arch_hw_breakpoint *hw)
{
 int ret;
 u64 alignment_mask, offset;


 ret = arch_build_bp_info(bp, attr, hw);
 if (ret)
  return ret;
 if (is_compat_bp(bp)) {
  if (hw->ctrl.len == ARM_BREAKPOINT_LEN_8)
   alignment_mask = 0x7;
  else
   alignment_mask = 0x3;
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
   return -EINVAL;
  }
 } else {
  if (hw->ctrl.type == ARM_BREAKPOINT_EXECUTE)
   alignment_mask = 0x3;
  else
   alignment_mask = 0x7;
  offset = hw->address & alignment_mask;
 }

 hw->address &= ~alignment_mask;
 hw->ctrl.len <<= offset;





 if (hw->ctrl.privilege == AARCH64_BREAKPOINT_EL1 && bp->hw.target)
  return -EINVAL;

 return 0;
}
