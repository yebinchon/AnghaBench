
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {unsigned long ip; } ;


 int just_return_func ;

void override_function_with_return(struct pt_regs *regs)
{
 regs->ip = (unsigned long)&just_return_func;
}
