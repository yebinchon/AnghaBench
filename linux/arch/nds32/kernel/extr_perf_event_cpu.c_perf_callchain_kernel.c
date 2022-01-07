
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stackframe {int sp; int lp; int fp; } ;
struct pt_regs {int sp; int lp; int fp; } ;
struct perf_callchain_entry_ctx {int dummy; } ;
struct TYPE_2__ {scalar_t__ (* is_in_guest ) () ;} ;


 int callchain_trace ;
 TYPE_1__* perf_guest_cbs ;
 scalar_t__ stub1 () ;
 int walk_stackframe (struct stackframe*,int ,struct perf_callchain_entry_ctx*) ;

void
perf_callchain_kernel(struct perf_callchain_entry_ctx *entry,
        struct pt_regs *regs)
{
 struct stackframe fr;

 if (perf_guest_cbs && perf_guest_cbs->is_in_guest()) {

  return;
 }
 fr.fp = regs->fp;
 fr.lp = regs->lp;
 fr.sp = regs->sp;
 walk_stackframe(&fr, callchain_trace, entry);
}
