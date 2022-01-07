
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stack_trace {int dummy; } ;


 int current ;
 int dump_trace (int ,struct stack_trace*) ;

void save_stack_trace(struct stack_trace *trace)
{
 dump_trace(current, trace);
}
