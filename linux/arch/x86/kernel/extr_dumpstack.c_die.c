
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int SIGSEGV ;
 scalar_t__ __die (char const*,struct pt_regs*,long) ;
 unsigned long oops_begin () ;
 int oops_end (unsigned long,struct pt_regs*,int) ;

void die(const char *str, struct pt_regs *regs, long err)
{
 unsigned long flags = oops_begin();
 int sig = SIGSEGV;

 if (__die(str, regs, err))
  sig = 0;
 oops_end(flags, regs, sig);
}
