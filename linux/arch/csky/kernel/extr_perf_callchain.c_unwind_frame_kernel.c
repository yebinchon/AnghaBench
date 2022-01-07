
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stackframe {int fp; int lr; } ;


 int EPERM ;
 int TASK_SIZE ;
 scalar_t__ __kernel_text_address (int ) ;
 int ftrace_graph_ret_addr (int *,int*,int ,int *) ;
 scalar_t__ kstack_end (void*) ;

__attribute__((used)) static int unwind_frame_kernel(struct stackframe *frame)
{
 if (kstack_end((void *)frame->fp))
  return -EPERM;
 if (frame->fp & 0x3 || frame->fp < TASK_SIZE)
  return -EPERM;

 *frame = *(struct stackframe *)frame->fp;
 if (__kernel_text_address(frame->lr)) {
  int graph = 0;

  frame->lr = ftrace_graph_ret_addr(((void*)0), &graph, frame->lr,
    ((void*)0));
 }
 return 0;
}
