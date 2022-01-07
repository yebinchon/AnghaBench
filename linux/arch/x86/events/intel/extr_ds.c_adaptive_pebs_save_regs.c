
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int r15; int r14; int r13; int r12; int r11; int r10; int r9; int r8; int sp; int bp; int di; int si; int dx; int cx; int bx; int ax; } ;
struct pebs_gprs {int r15; int r14; int r13; int r12; int r11; int r10; int r9; int r8; int sp; int bp; int di; int si; int dx; int cx; int bx; int ax; } ;



__attribute__((used)) static void adaptive_pebs_save_regs(struct pt_regs *regs,
        struct pebs_gprs *gprs)
{
 regs->ax = gprs->ax;
 regs->bx = gprs->bx;
 regs->cx = gprs->cx;
 regs->dx = gprs->dx;
 regs->si = gprs->si;
 regs->di = gprs->di;
 regs->bp = gprs->bp;
 regs->sp = gprs->sp;

 regs->r8 = gprs->r8;
 regs->r9 = gprs->r9;
 regs->r10 = gprs->r10;
 regs->r11 = gprs->r11;
 regs->r12 = gprs->r12;
 regs->r13 = gprs->r13;
 regs->r14 = gprs->r14;
 regs->r15 = gprs->r15;

}
