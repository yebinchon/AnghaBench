
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_callchain_entry_ctx {int dummy; } ;
struct arc_callchain_trace {int depth; struct perf_callchain_entry_ctx* perf_stuff; } ;


 int perf_callchain_store (struct perf_callchain_entry_ctx*,unsigned int) ;

__attribute__((used)) static int callchain_trace(unsigned int addr, void *data)
{
 struct arc_callchain_trace *ctrl = data;
 struct perf_callchain_entry_ctx *entry = ctrl->perf_stuff;

 perf_callchain_store(entry, addr);

 if (ctrl->depth++ < 3)
  return 0;

 return -1;
}
