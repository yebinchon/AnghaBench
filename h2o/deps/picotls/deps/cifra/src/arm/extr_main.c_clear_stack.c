
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int STACK_MAGIC ;
 int __HeapLimit ;

__attribute__((used)) static __attribute__((noinline)) void clear_stack(void)
{
  uint32_t *stack_start = &__HeapLimit;
  uint32_t ss = 0, *stack_stop = &ss;
  size_t words = stack_stop - stack_start;
  for (size_t i = 0; i < words; i++)
    stack_start[i] = STACK_MAGIC;
}
