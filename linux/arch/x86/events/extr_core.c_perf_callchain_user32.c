
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;
struct perf_callchain_entry_ctx {int dummy; } ;



__attribute__((used)) static inline int
perf_callchain_user32(struct pt_regs *regs, struct perf_callchain_entry_ctx *entry)
{
    return 0;
}
