
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct unwind_state {int dummy; } ;
struct pt_regs {unsigned long ip; scalar_t__ sp; } ;
struct perf_callchain_entry_ctx {int dummy; } ;
struct TYPE_2__ {scalar_t__ (* is_in_guest ) () ;} ;


 int current ;
 scalar_t__ perf_callchain_store (struct perf_callchain_entry_ctx*,unsigned long) ;
 TYPE_1__* perf_guest_cbs ;
 scalar_t__ perf_hw_regs (struct pt_regs*) ;
 scalar_t__ stub1 () ;
 int unwind_done (struct unwind_state*) ;
 unsigned long unwind_get_return_address (struct unwind_state*) ;
 int unwind_next_frame (struct unwind_state*) ;
 int unwind_start (struct unwind_state*,int ,struct pt_regs*,void*) ;

void
perf_callchain_kernel(struct perf_callchain_entry_ctx *entry, struct pt_regs *regs)
{
 struct unwind_state state;
 unsigned long addr;

 if (perf_guest_cbs && perf_guest_cbs->is_in_guest()) {

  return;
 }

 if (perf_callchain_store(entry, regs->ip))
  return;

 if (perf_hw_regs(regs))
  unwind_start(&state, current, regs, ((void*)0));
 else
  unwind_start(&state, current, ((void*)0), (void *)regs->sp);

 for (; !unwind_done(&state); unwind_next_frame(&state)) {
  addr = unwind_get_return_address(&state);
  if (!addr || perf_callchain_store(entry, addr))
   return;
 }
}
