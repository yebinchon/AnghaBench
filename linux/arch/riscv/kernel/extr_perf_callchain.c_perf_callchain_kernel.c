
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct perf_callchain_entry_ctx {int dummy; } ;
struct TYPE_2__ {scalar_t__ (* is_in_guest ) () ;} ;


 int fill_callchain ;
 TYPE_1__* perf_guest_cbs ;
 int pr_warn (char*) ;
 scalar_t__ stub1 () ;
 int walk_stackframe (int *,struct pt_regs*,int ,struct perf_callchain_entry_ctx*) ;

void perf_callchain_kernel(struct perf_callchain_entry_ctx *entry,
      struct pt_regs *regs)
{

 if (perf_guest_cbs && perf_guest_cbs->is_in_guest()) {
  pr_warn("RISC-V does not support perf in guest mode!");
  return;
 }

 walk_stackframe(((void*)0), regs, fill_callchain, entry);
}
