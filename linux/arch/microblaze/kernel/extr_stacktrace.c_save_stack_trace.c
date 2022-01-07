
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stack_trace {int skip; } ;


 int microblaze_unwind (int *,struct stack_trace*) ;

void save_stack_trace(struct stack_trace *trace)
{

 trace->skip += 2;
 microblaze_unwind(((void*)0), trace);
}
