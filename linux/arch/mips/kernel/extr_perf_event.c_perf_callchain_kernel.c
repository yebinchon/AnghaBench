
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {unsigned long* regs; unsigned long cp0_epc; } ;
struct perf_callchain_entry_ctx {scalar_t__ nr; scalar_t__ max_stack; } ;


 unsigned long THREAD_SIZE ;
 int __kernel_text_address (unsigned long) ;
 int current ;
 int perf_callchain_store (struct perf_callchain_entry_ctx*,unsigned long) ;
 scalar_t__ raw_show_trace ;
 int save_raw_perf_callchain (struct perf_callchain_entry_ctx*,unsigned long) ;
 scalar_t__ task_stack_page (int ) ;
 unsigned long unwind_stack (int ,unsigned long*,unsigned long,unsigned long*) ;

void perf_callchain_kernel(struct perf_callchain_entry_ctx *entry,
      struct pt_regs *regs)
{
 unsigned long sp = regs->regs[29];
 save_raw_perf_callchain(entry, sp);

}
