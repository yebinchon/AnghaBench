
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uml_pt_regs {int dummy; } ;
struct siginfo {int dummy; } ;


 int WINCH_IRQ ;
 int do_IRQ (int ,struct uml_pt_regs*) ;

void winch(int sig, struct siginfo *unused_si, struct uml_pt_regs *regs)
{
 do_IRQ(WINCH_IRQ, regs);
}
