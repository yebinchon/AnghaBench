
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
typedef unsigned long u32 ;
struct arch_hw_breakpoint_ctrl {int len; } ;


 unsigned long __ffs (int ) ;
 unsigned long __fls (int ) ;
 unsigned long untagged_addr (unsigned long) ;

__attribute__((used)) static u64 get_distance_from_watchpoint(unsigned long addr, u64 val,
     struct arch_hw_breakpoint_ctrl *ctrl)
{
 u64 wp_low, wp_high;
 u32 lens, lene;

 addr = untagged_addr(addr);

 lens = __ffs(ctrl->len);
 lene = __fls(ctrl->len);

 wp_low = val + lens;
 wp_high = val + lene;
 if (addr < wp_low)
  return wp_low - addr;
 else if (addr > wp_high)
  return addr - wp_high;
 else
  return 0;
}
