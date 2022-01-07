
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int do_privop (struct pt_regs*) ;

void do_privact(struct pt_regs *regs)
{
 do_privop(regs);
}
