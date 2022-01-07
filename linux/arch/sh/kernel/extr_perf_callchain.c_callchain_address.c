
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_callchain_entry_ctx {int dummy; } ;


 int perf_callchain_store (struct perf_callchain_entry_ctx*,unsigned long) ;

__attribute__((used)) static void callchain_address(void *data, unsigned long addr, int reliable)
{
 struct perf_callchain_entry_ctx *entry = data;

 if (reliable)
  perf_callchain_store(entry, addr);
}
