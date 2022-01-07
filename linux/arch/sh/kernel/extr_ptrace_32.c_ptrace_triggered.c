
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;
struct perf_sample_data {int dummy; } ;
struct perf_event_attr {int disabled; } ;
struct perf_event {struct perf_event_attr attr; } ;


 int modify_user_hw_breakpoint (struct perf_event*,struct perf_event_attr*) ;

void ptrace_triggered(struct perf_event *bp,
        struct perf_sample_data *data, struct pt_regs *regs)
{
 struct perf_event_attr attr;





 attr = bp->attr;
 attr.disabled = 1;
 modify_user_hw_breakpoint(bp, &attr);
}
