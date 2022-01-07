
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct perf_event {int dummy; } ;
typedef enum dbg_active_el { ____Placeholder_dbg_active_el } dbg_active_el ;
struct TYPE_3__ {int privilege; } ;
struct TYPE_4__ {TYPE_1__ ctrl; } ;




 int bp_on_reg ;
 int core_num_brps ;
 int core_num_wrps ;
 TYPE_2__* counter_arch_bp (struct perf_event*) ;
 int debug_exception_level (int) ;
 int read_wb_reg (int,int) ;
 struct perf_event** this_cpu_ptr (int ) ;
 int wp_on_reg ;
 int write_wb_reg (int,int,int) ;

__attribute__((used)) static void toggle_bp_registers(int reg, enum dbg_active_el el, int enable)
{
 int i, max_slots, privilege;
 u32 ctrl;
 struct perf_event **slots;

 switch (reg) {
 case 129:
  slots = this_cpu_ptr(bp_on_reg);
  max_slots = core_num_brps;
  break;
 case 128:
  slots = this_cpu_ptr(wp_on_reg);
  max_slots = core_num_wrps;
  break;
 default:
  return;
 }

 for (i = 0; i < max_slots; ++i) {
  if (!slots[i])
   continue;

  privilege = counter_arch_bp(slots[i])->ctrl.privilege;
  if (debug_exception_level(privilege) != el)
   continue;

  ctrl = read_wb_reg(reg, i);
  if (enable)
   ctrl |= 0x1;
  else
   ctrl &= ~0x1;
  write_wb_reg(reg, i, ctrl);
 }
}
