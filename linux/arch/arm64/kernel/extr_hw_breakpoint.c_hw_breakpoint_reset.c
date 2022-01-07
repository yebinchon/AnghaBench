
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int dummy; } ;


 int AARCH64_DBG_REG_BCR ;
 int AARCH64_DBG_REG_BVR ;
 int AARCH64_DBG_REG_WCR ;
 int AARCH64_DBG_REG_WVR ;
 int HW_BREAKPOINT_RESTORE ;
 int bp_on_reg ;
 int core_num_brps ;
 int core_num_wrps ;
 int hw_breakpoint_control (struct perf_event*,int ) ;
 struct perf_event** this_cpu_ptr (int ) ;
 int wp_on_reg ;
 int write_wb_reg (int ,int,unsigned long) ;

__attribute__((used)) static int hw_breakpoint_reset(unsigned int cpu)
{
 int i;
 struct perf_event **slots;
 for (slots = this_cpu_ptr(bp_on_reg), i = 0; i < core_num_brps; ++i) {
  if (slots[i]) {
   hw_breakpoint_control(slots[i], HW_BREAKPOINT_RESTORE);
  } else {
   write_wb_reg(AARCH64_DBG_REG_BCR, i, 0UL);
   write_wb_reg(AARCH64_DBG_REG_BVR, i, 0UL);
  }
 }

 for (slots = this_cpu_ptr(wp_on_reg), i = 0; i < core_num_wrps; ++i) {
  if (slots[i]) {
   hw_breakpoint_control(slots[i], HW_BREAKPOINT_RESTORE);
  } else {
   write_wb_reg(AARCH64_DBG_REG_WCR, i, 0UL);
   write_wb_reg(AARCH64_DBG_REG_WVR, i, 0UL);
  }
 }

 return 0;
}
