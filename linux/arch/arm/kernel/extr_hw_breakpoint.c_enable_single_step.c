
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct perf_event {int dummy; } ;
struct TYPE_4__ {int mismatch; int enabled; int privilege; int type; int len; } ;
struct TYPE_3__ {int privilege; } ;
struct arch_hw_breakpoint {int trigger; TYPE_2__ step_ctrl; TYPE_1__ ctrl; } ;


 int ARM_BREAKPOINT_EXECUTE ;
 int ARM_BREAKPOINT_LEN_4 ;
 int arch_install_hw_breakpoint (struct perf_event*) ;
 int arch_uninstall_hw_breakpoint (struct perf_event*) ;
 struct arch_hw_breakpoint* counter_arch_bp (struct perf_event*) ;

__attribute__((used)) static void enable_single_step(struct perf_event *bp, u32 addr)
{
 struct arch_hw_breakpoint *info = counter_arch_bp(bp);

 arch_uninstall_hw_breakpoint(bp);
 info->step_ctrl.mismatch = 1;
 info->step_ctrl.len = ARM_BREAKPOINT_LEN_4;
 info->step_ctrl.type = ARM_BREAKPOINT_EXECUTE;
 info->step_ctrl.privilege = info->ctrl.privilege;
 info->step_ctrl.enabled = 1;
 info->trigger = addr;
 arch_install_hw_breakpoint(bp);
}
