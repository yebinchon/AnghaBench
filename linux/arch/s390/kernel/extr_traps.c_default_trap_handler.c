
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int SIGSEGV ;
 int die (struct pt_regs*,char*) ;
 int do_exit (int ) ;
 int report_user_fault (struct pt_regs*,int ,int ) ;
 scalar_t__ user_mode (struct pt_regs*) ;

void default_trap_handler(struct pt_regs *regs)
{
 if (user_mode(regs)) {
  report_user_fault(regs, SIGSEGV, 0);
  do_exit(SIGSEGV);
 } else
  die(regs, "Unknown program exception");
}
