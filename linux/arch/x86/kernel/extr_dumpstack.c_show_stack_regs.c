
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int KERN_DEFAULT ;
 int current ;
 int show_trace_log_lvl (int ,struct pt_regs*,int *,int ) ;

void show_stack_regs(struct pt_regs *regs)
{
 show_trace_log_lvl(current, regs, ((void*)0), KERN_DEFAULT);
}
