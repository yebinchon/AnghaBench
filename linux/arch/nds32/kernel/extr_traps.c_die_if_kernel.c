
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int die (char const*,struct pt_regs*,int) ;
 scalar_t__ user_mode (struct pt_regs*) ;

void die_if_kernel(const char *str, struct pt_regs *regs, int err)
{
 if (user_mode(regs))
  return;

 die(str, regs, err);
}
