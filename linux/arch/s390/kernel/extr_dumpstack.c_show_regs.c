
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {scalar_t__* gprs; } ;


 int KERN_DEFAULT ;
 int show_last_breaking_event (struct pt_regs*) ;
 int show_registers (struct pt_regs*) ;
 int show_regs_print_info (int ) ;
 int show_stack (int *,unsigned long*) ;
 int user_mode (struct pt_regs*) ;

void show_regs(struct pt_regs *regs)
{
 show_regs_print_info(KERN_DEFAULT);
 show_registers(regs);

 if (!user_mode(regs))
  show_stack(((void*)0), (unsigned long *) regs->gprs[15]);
 show_last_breaking_event(regs);
}
