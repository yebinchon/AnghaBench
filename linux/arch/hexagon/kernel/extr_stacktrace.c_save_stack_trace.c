
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stackframe {unsigned long fp; int rets; } ;
struct stack_trace {int skip; scalar_t__ nr_entries; scalar_t__ max_entries; int * entries; } ;


 unsigned long THREAD_SIZE ;
 int current ;
 unsigned long current_frame_pointer ;
 scalar_t__ task_stack_page (int ) ;

void save_stack_trace(struct stack_trace *trace)
{
 unsigned long low, high;
 unsigned long fp;
 struct stackframe *frame;
 int skip = trace->skip;

 low = (unsigned long)task_stack_page(current);
 high = low + THREAD_SIZE;
 fp = current_frame_pointer;

 while (fp >= low && fp <= (high - sizeof(*frame))) {
  frame = (struct stackframe *)fp;

  if (skip) {
   skip--;
  } else {
   trace->entries[trace->nr_entries++] = frame->rets;
   if (trace->nr_entries >= trace->max_entries)
    break;
  }





  low = fp + sizeof(*frame);
  fp = frame->fp;
 }
}
