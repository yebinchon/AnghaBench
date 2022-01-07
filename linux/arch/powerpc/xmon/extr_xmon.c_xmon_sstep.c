
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 scalar_t__ user_mode (struct pt_regs*) ;
 int xmon_core (struct pt_regs*,int ) ;

__attribute__((used)) static int xmon_sstep(struct pt_regs *regs)
{
 if (user_mode(regs))
  return 0;
 xmon_core(regs, 0);
 return 1;
}
