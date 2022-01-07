
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct callee_regs {int r13; } ;


 int print_reg_file (int *,int) ;

__attribute__((used)) static void show_callee_regs(struct callee_regs *cregs)
{
 print_reg_file(&(cregs->r13), 13);
}
