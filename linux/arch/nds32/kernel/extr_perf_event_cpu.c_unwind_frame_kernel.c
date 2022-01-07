
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stackframe {unsigned long fp; unsigned long lp; unsigned long* sp; } ;


 int EPERM ;
 size_t FP_OFFSET ;
 unsigned long TASK_SIZE ;
 scalar_t__ __kernel_text_address (unsigned long) ;
 void* ftrace_graph_ret_addr (int *,int*,unsigned long,int *) ;
 int kstack_end (void*) ;
 int * tsk ;

__attribute__((used)) static int unwind_frame_kernel(struct stackframe *frame)
{
 int graph = 0;
 if (!kstack_end((void *)frame->sp)) {
  frame->lp = ((unsigned long *)frame->sp)[1];



  if (__kernel_text_address(frame->lp))
   frame->lp = ftrace_graph_ret_addr
      (tsk, &graph, frame->lp, ((void*)0));

  frame->sp = ((unsigned long *)frame->sp) + 1;

  return 0;
 } else {
  return -EPERM;
 }

}
