
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int dummy; } ;


 int HW_BREAKPOINT_UNINSTALL ;
 int hw_breakpoint_control (struct perf_event*,int ) ;

void arch_uninstall_hw_breakpoint(struct perf_event *bp)
{
 hw_breakpoint_control(bp, HW_BREAKPOINT_UNINSTALL);
}
