
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stack_trace {scalar_t__ skip; unsigned long* entries; scalar_t__ nr_entries; scalar_t__ max_entries; } ;


 scalar_t__ __kernel_text_address (unsigned long) ;
 int in_sched_functions (unsigned long) ;
 int kstack_end (unsigned long*) ;

__attribute__((used)) static void save_raw_context_stack(struct stack_trace *trace,
 unsigned long reg29, int savesched)
{
 unsigned long *sp = (unsigned long *)reg29;
 unsigned long addr;

 while (!kstack_end(sp)) {
  addr = *sp++;
  if (__kernel_text_address(addr) &&
      (savesched || !in_sched_functions(addr))) {
   if (trace->skip > 0)
    trace->skip--;
   else
    trace->entries[trace->nr_entries++] = addr;
   if (trace->nr_entries >= trace->max_entries)
    break;
  }
 }
}
