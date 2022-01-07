
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_attr {int dummy; } ;
struct perf_event {struct perf_event_attr attr; } ;


 int modify_user_hw_breakpoint (struct perf_event*,struct perf_event_attr*) ;
 int ptrace_fill_bp_fields (struct perf_event_attr*,int,int,int) ;

__attribute__((used)) static int ptrace_modify_breakpoint(struct perf_event *bp, int len, int type,
     int disabled)
{
 struct perf_event_attr attr = bp->attr;
 int err;

 err = ptrace_fill_bp_fields(&attr, len, type, disabled);
 if (err)
  return err;

 return modify_user_hw_breakpoint(bp, &attr);
}
