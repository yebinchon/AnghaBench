
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int die_if_no_fixup (char*,struct pt_regs*,unsigned long) ;
 int force_sig (int) ;
 scalar_t__ user_mode (struct pt_regs*) ;

__attribute__((used)) static void do_unhandled_exception(int signr, char *str, unsigned long error,
       struct pt_regs *regs)
{
 if (user_mode(regs))
  force_sig(signr);

 die_if_no_fixup(str, regs, error);
}
