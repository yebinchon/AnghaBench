
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_attr {int bp_type; int bp_addr; int bp_len; int exclude_hv; int exclude_kernel; int exclude_user; } ;
struct perf_event {int dummy; } ;
struct arch_hw_breakpoint {int address; int len; int type; } ;


 int EINVAL ;
 int ENODEV ;
 int HW_BREAKPOINT_ALIGN ;
 int HW_BREAKPOINT_R ;
 int HW_BREAKPOINT_W ;
 int HW_BRK_TYPE_HYP ;
 int HW_BRK_TYPE_KERNEL ;
 int HW_BRK_TYPE_READ ;
 int HW_BRK_TYPE_TRANSLATE ;
 int HW_BRK_TYPE_USER ;
 int HW_BRK_TYPE_WRITE ;
 scalar_t__ dawr_enabled () ;
 int ppc_breakpoint_available () ;

int hw_breakpoint_arch_parse(struct perf_event *bp,
        const struct perf_event_attr *attr,
        struct arch_hw_breakpoint *hw)
{
 int ret = -EINVAL, length_max;

 if (!bp)
  return ret;

 hw->type = HW_BRK_TYPE_TRANSLATE;
 if (attr->bp_type & HW_BREAKPOINT_R)
  hw->type |= HW_BRK_TYPE_READ;
 if (attr->bp_type & HW_BREAKPOINT_W)
  hw->type |= HW_BRK_TYPE_WRITE;
 if (hw->type == HW_BRK_TYPE_TRANSLATE)

  return ret;
 if (!attr->exclude_user)
  hw->type |= HW_BRK_TYPE_USER;
 if (!attr->exclude_kernel)
  hw->type |= HW_BRK_TYPE_KERNEL;
 if (!attr->exclude_hv)
  hw->type |= HW_BRK_TYPE_HYP;
 hw->address = attr->bp_addr;
 hw->len = attr->bp_len;







 if (!ppc_breakpoint_available())
  return -ENODEV;
 length_max = 8;
 if (dawr_enabled()) {
  length_max = 512 ;

  if ((attr->bp_addr >> 9) !=
      ((attr->bp_addr + attr->bp_len - 1) >> 9))
   return -EINVAL;
 }
 if (hw->len >
     (length_max - (hw->address & HW_BREAKPOINT_ALIGN)))
  return -EINVAL;
 return 0;
}
