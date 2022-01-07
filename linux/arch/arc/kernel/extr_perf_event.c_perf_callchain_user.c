
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;
struct perf_callchain_entry_ctx {int dummy; } ;


 int instruction_pointer (struct pt_regs*) ;
 int perf_callchain_store (struct perf_callchain_entry_ctx*,int ) ;

void perf_callchain_user(struct perf_callchain_entry_ctx *entry,
    struct pt_regs *regs)
{




 perf_callchain_store(entry, instruction_pointer(regs));
}
