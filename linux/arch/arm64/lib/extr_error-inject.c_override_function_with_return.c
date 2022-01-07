
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int instruction_pointer_set (struct pt_regs*,int ) ;
 int procedure_link_pointer (struct pt_regs*) ;

void override_function_with_return(struct pt_regs *regs)
{
 instruction_pointer_set(regs, procedure_link_pointer(regs));
}
