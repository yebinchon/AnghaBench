
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct stack_trace {int dummy; } ;


 int dump_ops ;
 int dump_trace (struct task_struct*,int *,struct stack_trace*) ;

__attribute__((used)) static void __save_stack_trace(struct task_struct *tsk, struct stack_trace *trace)
{
 dump_trace(tsk, &dump_ops, trace);
}
