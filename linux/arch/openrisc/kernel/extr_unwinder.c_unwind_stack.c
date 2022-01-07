
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ __kernel_text_address (unsigned long) ;
 int kstack_end (unsigned long*) ;

void unwind_stack(void *data, unsigned long *stack,
     void (*trace)(void *data, unsigned long addr, int reliable))
{
 unsigned long addr;

 while (!kstack_end(stack)) {
  addr = *stack++;
  if (__kernel_text_address(addr))
   trace(data, addr, 0);
 }
}
