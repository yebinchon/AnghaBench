
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ __kernel_text_address (unsigned long) ;
 int pr_debug (char*,...) ;

__attribute__((used)) static void show_trace(unsigned long *stack, unsigned long *endstack)
{
 unsigned long addr;
 int i;

 pr_debug("Call trace:");
 i = 0;
 while (stack + 1 <= endstack) {
  addr = *stack++;
  if (__kernel_text_address(addr)) {

   if (i % 5 == 0)
    pr_debug("\n	    ");

   pr_debug(" [<%08lx>] %pS\n", addr, (void *)addr);
   i++;
  }
 }
 pr_debug("\n");
}
