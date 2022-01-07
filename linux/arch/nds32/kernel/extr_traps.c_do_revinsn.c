
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int SIGILL ;
 int do_exit (int ) ;
 int force_sig (int ) ;
 int pr_emerg (char*) ;
 int show_regs (struct pt_regs*) ;
 int user_mode (struct pt_regs*) ;

void do_revinsn(struct pt_regs *regs)
{
 pr_emerg("Reserved Instruction\n");
 show_regs(regs);
 if (!user_mode(regs))
  do_exit(SIGILL);
 force_sig(SIGILL);
}
