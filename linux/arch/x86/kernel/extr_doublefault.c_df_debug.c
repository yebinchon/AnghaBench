
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int panic (char*) ;
 int pr_emerg (char*,long) ;
 int show_regs (struct pt_regs*) ;

void df_debug(struct pt_regs *regs, long error_code)
{
 pr_emerg("PANIC: double fault, error_code: 0x%lx\n", error_code);
 show_regs(regs);
 panic("Machine halted.");
}
