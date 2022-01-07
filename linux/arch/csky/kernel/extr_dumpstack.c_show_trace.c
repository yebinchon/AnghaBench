
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long THREAD_MASK ;
 scalar_t__ THREAD_SIZE ;
 scalar_t__ __kernel_text_address (unsigned long) ;
 int pr_cont (char*,...) ;
 int pr_info (char*) ;

void show_trace(unsigned long *stack)
{
 unsigned long *stack_end;
 unsigned long *stack_start;
 unsigned long *fp;
 unsigned long addr;

 addr = (unsigned long) stack & THREAD_MASK;
 stack_start = (unsigned long *) addr;
 stack_end = (unsigned long *) (addr + THREAD_SIZE);

 fp = stack;
 pr_info("\nCall Trace:");

 while (fp > stack_start && fp < stack_end) {




  addr = *fp++;

  if (__kernel_text_address(addr))
   pr_cont("\n[<%08lx>] %pS", addr, (void *)addr);
 }
 pr_cont("\n");
}
