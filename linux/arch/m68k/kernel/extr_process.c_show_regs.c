
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int sr; int d1; int d2; int d3; int d4; int d5; int a0; int a1; int a2; int d0; int orig_d0; int pc; int vector; int format; } ;


 int PS_S ;
 int pr_info (char*,int ,...) ;
 int print_tainted () ;
 int rdusp () ;

void show_regs(struct pt_regs * regs)
{
 pr_info("Format %02x  Vector: %04x  PC: %08lx  Status: %04x    %s\n",
  regs->format, regs->vector, regs->pc, regs->sr,
  print_tainted());
 pr_info("ORIG_D0: %08lx  D0: %08lx  A2: %08lx  A1: %08lx\n",
  regs->orig_d0, regs->d0, regs->a2, regs->a1);
 pr_info("A0: %08lx  D5: %08lx  D4: %08lx\n", regs->a0, regs->d5,
  regs->d4);
 pr_info("D3: %08lx  D2: %08lx  D1: %08lx\n", regs->d3, regs->d2,
  regs->d1);
 if (!(regs->sr & PS_S))
  pr_info("USP: %08lx\n", rdusp());
}
