
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int perf_callchain_store (void*,unsigned long) ;

bool fill_callchain(unsigned long pc, void *entry)
{
 return perf_callchain_store(entry, pc);
}
