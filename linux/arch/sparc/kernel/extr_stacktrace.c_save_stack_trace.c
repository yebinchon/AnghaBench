
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stack_trace {int dummy; } ;


 int __save_stack_trace (int ,struct stack_trace*,int) ;
 int current_thread_info () ;

void save_stack_trace(struct stack_trace *trace)
{
 __save_stack_trace(current_thread_info(), trace, 0);
}
