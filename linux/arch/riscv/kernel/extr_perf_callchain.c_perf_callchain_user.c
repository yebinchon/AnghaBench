
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {unsigned long s0; int ra; int sepc; } ;
struct perf_callchain_entry_ctx {scalar_t__ nr; scalar_t__ max_stack; } ;
struct TYPE_2__ {scalar_t__ (* is_in_guest ) () ;} ;


 int perf_callchain_store (struct perf_callchain_entry_ctx*,int ) ;
 TYPE_1__* perf_guest_cbs ;
 scalar_t__ stub1 () ;
 unsigned long user_backtrace (struct perf_callchain_entry_ctx*,unsigned long,int ) ;

void perf_callchain_user(struct perf_callchain_entry_ctx *entry,
    struct pt_regs *regs)
{
 unsigned long fp = 0;


 if (perf_guest_cbs && perf_guest_cbs->is_in_guest())
  return;

 fp = regs->s0;
 perf_callchain_store(entry, regs->sepc);

 fp = user_backtrace(entry, fp, regs->ra);
 while (fp && !(fp & 0x3) && entry->nr < entry->max_stack)
  fp = user_backtrace(entry, fp, 0);
}
