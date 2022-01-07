
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {unsigned long sp; int bx; int r12; int r13; int r14; int r15; int bp; int ss; int cs; int flags; int orig_ax; scalar_t__ r11; int r10; int r9; int r8; int di; int si; int dx; int cx; int ax; int ip; } ;
struct perf_regs {struct pt_regs* regs; int abi; } ;


 int PERF_SAMPLE_REGS_ABI_32 ;
 int PERF_SAMPLE_REGS_ABI_64 ;
 int PERF_SAMPLE_REGS_ABI_NONE ;
 int current ;
 struct pt_regs* task_pt_regs (int ) ;
 scalar_t__ user_64bit_mode (struct pt_regs*) ;

void perf_get_regs_user(struct perf_regs *regs_user,
   struct pt_regs *regs,
   struct pt_regs *regs_user_copy)
{
 struct pt_regs *user_regs = task_pt_regs(current);







 if (regs->sp > (unsigned long)&user_regs->r11 &&
     regs->sp <= (unsigned long)(user_regs + 1)) {
  regs_user->abi = PERF_SAMPLE_REGS_ABI_NONE;
  regs_user->regs = ((void*)0);
  return;
 }





 regs_user_copy->ip = user_regs->ip;
 regs_user_copy->ax = user_regs->ax;
 regs_user_copy->cx = user_regs->cx;
 regs_user_copy->dx = user_regs->dx;
 regs_user_copy->si = user_regs->si;
 regs_user_copy->di = user_regs->di;
 regs_user_copy->r8 = user_regs->r8;
 regs_user_copy->r9 = user_regs->r9;
 regs_user_copy->r10 = user_regs->r10;
 regs_user_copy->r11 = user_regs->r11;
 regs_user_copy->orig_ax = user_regs->orig_ax;
 regs_user_copy->flags = user_regs->flags;
 regs_user_copy->sp = user_regs->sp;
 regs_user_copy->cs = user_regs->cs;
 regs_user_copy->ss = user_regs->ss;






 regs_user_copy->bp = user_regs->bp;

 regs_user_copy->bx = -1;
 regs_user_copy->r12 = -1;
 regs_user_copy->r13 = -1;
 regs_user_copy->r14 = -1;
 regs_user_copy->r15 = -1;







 regs_user->abi = user_64bit_mode(user_regs) ?
  PERF_SAMPLE_REGS_ABI_64 : PERF_SAMPLE_REGS_ABI_32;

 regs_user->regs = regs_user_copy;
}
