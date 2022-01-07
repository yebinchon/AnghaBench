
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unwind_frame_info {scalar_t__ ip; } ;
struct task_struct {int dummy; } ;
struct stack_trace {scalar_t__ nr_entries; scalar_t__ max_entries; scalar_t__* entries; } ;


 scalar_t__ __kernel_text_address (scalar_t__) ;
 int unwind_frame_init_task (struct unwind_frame_info*,struct task_struct*,int *) ;
 scalar_t__ unwind_once (struct unwind_frame_info*) ;

__attribute__((used)) static void dump_trace(struct task_struct *task, struct stack_trace *trace)
{
 struct unwind_frame_info info;

 unwind_frame_init_task(&info, task, ((void*)0));


 trace->nr_entries = 0;
 while (trace->nr_entries < trace->max_entries) {
  if (unwind_once(&info) < 0 || info.ip == 0)
   break;

  if (__kernel_text_address(info.ip))
   trace->entries[trace->nr_entries++] = info.ip;
 }
}
