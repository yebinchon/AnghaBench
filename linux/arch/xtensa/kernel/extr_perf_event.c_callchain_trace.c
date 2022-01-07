
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stackframe {int pc; } ;
struct perf_callchain_entry_ctx {int dummy; } ;


 int perf_callchain_store (struct perf_callchain_entry_ctx*,int ) ;

__attribute__((used)) static int callchain_trace(struct stackframe *frame, void *data)
{
 struct perf_callchain_entry_ctx *entry = data;

 perf_callchain_store(entry, frame->pc);
 return 0;
}
