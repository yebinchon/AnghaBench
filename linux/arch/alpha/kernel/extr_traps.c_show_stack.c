
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int THREAD_SIZE ;
 int dik_show_trace (unsigned long*) ;
 int kstack_depth_to_print ;
 int pr_cont (char*,...) ;
 int printk (char*) ;

void show_stack(struct task_struct *task, unsigned long *sp)
{
 unsigned long *stack;
 int i;





 if(sp==((void*)0))
  sp=(unsigned long*)&sp;

 stack = sp;
 for(i=0; i < kstack_depth_to_print; i++) {
  if (((long) stack & (THREAD_SIZE-1)) == 0)
   break;
  if ((i % 4) == 0) {
   if (i)
    pr_cont("\n");
   printk("       ");
  } else {
   pr_cont(" ");
  }
  pr_cont("%016lx", *stack++);
 }
 pr_cont("\n");
 dik_show_trace(sp);
}
