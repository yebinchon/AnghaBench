
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct perf_event {int dummy; } ;
struct TYPE_3__ {scalar_t__ enabled; } ;
struct TYPE_4__ {TYPE_1__ step_ctrl; } ;


 int arch_install_hw_breakpoint (struct perf_event*) ;
 int arch_uninstall_hw_breakpoint (struct perf_event*) ;
 TYPE_2__* counter_arch_bp (struct perf_event*) ;

__attribute__((used)) static void disable_single_step(struct perf_event *bp)
{
 arch_uninstall_hw_breakpoint(bp);
 counter_arch_bp(bp)->step_ctrl.enabled = 0;
 arch_install_hw_breakpoint(bp);
}
