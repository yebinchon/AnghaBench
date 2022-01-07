
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int pc; } ;
struct perf_callchain_entry_ctx {int dummy; } ;


 int callchain_ops ;
 int perf_callchain_store (struct perf_callchain_entry_ctx*,int ) ;
 int unwind_stack (int *,struct pt_regs*,int *,int *,struct perf_callchain_entry_ctx*) ;

void
perf_callchain_kernel(struct perf_callchain_entry_ctx *entry, struct pt_regs *regs)
{
 perf_callchain_store(entry, regs->pc);

 unwind_stack(((void*)0), regs, ((void*)0), &callchain_ops, entry);
}
