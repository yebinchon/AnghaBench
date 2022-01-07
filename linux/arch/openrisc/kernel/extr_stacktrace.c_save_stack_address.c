
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stack_trace {scalar_t__ skip; scalar_t__ nr_entries; scalar_t__ max_entries; unsigned long* entries; } ;



__attribute__((used)) static void
save_stack_address(void *data, unsigned long addr, int reliable)
{
 struct stack_trace *trace = data;

 if (!reliable)
  return;

 if (trace->skip > 0) {
  trace->skip--;
  return;
 }

 if (trace->nr_entries < trace->max_entries)
  trace->entries[trace->nr_entries++] = addr;
}
