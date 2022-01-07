
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_attr {int dummy; } ;
struct perf_event {int dummy; } ;
struct arch_hw_breakpoint {int len; unsigned int mask; unsigned int address; } ;


 int EINVAL ;
 int WARN_ON_ONCE (int) ;




 int arch_build_bp_info (struct perf_event*,struct perf_event_attr const*,struct arch_hw_breakpoint*) ;

int hw_breakpoint_arch_parse(struct perf_event *bp,
        const struct perf_event_attr *attr,
        struct arch_hw_breakpoint *hw)
{
 unsigned int align;
 int ret;


 ret = arch_build_bp_info(bp, attr, hw);
 if (ret)
  return ret;

 switch (hw->len) {
 case 131:
  align = 0;
  if (hw->mask)
   align = hw->mask;
  break;
 case 130:
  align = 1;
  break;
 case 129:
  align = 3;
  break;





 default:
  WARN_ON_ONCE(1);
  return -EINVAL;
 }





 if (hw->address & align)
  return -EINVAL;

 return 0;
}
