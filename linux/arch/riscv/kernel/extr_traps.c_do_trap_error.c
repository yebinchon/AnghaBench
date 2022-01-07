
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int die (struct pt_regs*,char const*) ;
 int do_trap (struct pt_regs*,int,int,unsigned long) ;
 int fixup_exception (struct pt_regs*) ;
 scalar_t__ user_mode (struct pt_regs*) ;

__attribute__((used)) static void do_trap_error(struct pt_regs *regs, int signo, int code,
 unsigned long addr, const char *str)
{
 if (user_mode(regs)) {
  do_trap(regs, signo, code, addr);
 } else {
  if (!fixup_exception(regs))
   die(regs, str);
 }
}
