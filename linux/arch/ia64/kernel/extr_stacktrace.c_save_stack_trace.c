
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stack_trace {int dummy; } ;


 int ia64_do_save_stack ;
 int unw_init_running (int ,struct stack_trace*) ;

void save_stack_trace(struct stack_trace *trace)
{
 unw_init_running(ia64_do_save_stack, trace);
}
