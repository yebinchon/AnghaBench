
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;
struct perf_callchain_entry_ctx {int dummy; } ;
struct arc_callchain_trace {struct perf_callchain_entry_ctx* perf_stuff; int depth; } ;


 int arc_unwind_core (int *,struct pt_regs*,int ,struct arc_callchain_trace*) ;
 int callchain_trace ;

void perf_callchain_kernel(struct perf_callchain_entry_ctx *entry,
      struct pt_regs *regs)
{
 struct arc_callchain_trace ctrl = {
  .depth = 0,
  .perf_stuff = entry,
 };

 arc_unwind_core(((void*)0), regs, callchain_trace, &ctrl);
}
