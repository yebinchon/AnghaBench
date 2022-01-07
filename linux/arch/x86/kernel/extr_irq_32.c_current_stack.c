
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int THREAD_SIZE ;
 int current_stack_pointer ;

__attribute__((used)) static inline void *current_stack(void)
{
 return (void *)(current_stack_pointer & ~(THREAD_SIZE - 1));
}
