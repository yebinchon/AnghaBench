
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long* gregs; unsigned long version; } ;
struct ucontext {TYPE_1__ uc_mcontext; } ;
struct switch_stack {int gp; int fp; int r23; int r22; int r21; int r20; int r19; int r18; int r17; int r16; } ;
struct pt_regs {int sp; int ea; int ra; int r15; int r14; int r13; int r12; int r11; int r10; int r9; int r8; int r7; int r6; int r5; int r4; int r3; int r2; int r1; } ;


 int MCONTEXT_VERSION ;
 int __put_user (int ,unsigned long*) ;

__attribute__((used)) static inline int rt_setup_ucontext(struct ucontext *uc, struct pt_regs *regs)
{
 struct switch_stack *sw = (struct switch_stack *)regs - 1;
 unsigned long *gregs = uc->uc_mcontext.gregs;
 int err = 0;

 err |= __put_user(MCONTEXT_VERSION, &uc->uc_mcontext.version);
 err |= __put_user(regs->r1, &gregs[0]);
 err |= __put_user(regs->r2, &gregs[1]);
 err |= __put_user(regs->r3, &gregs[2]);
 err |= __put_user(regs->r4, &gregs[3]);
 err |= __put_user(regs->r5, &gregs[4]);
 err |= __put_user(regs->r6, &gregs[5]);
 err |= __put_user(regs->r7, &gregs[6]);
 err |= __put_user(regs->r8, &gregs[7]);
 err |= __put_user(regs->r9, &gregs[8]);
 err |= __put_user(regs->r10, &gregs[9]);
 err |= __put_user(regs->r11, &gregs[10]);
 err |= __put_user(regs->r12, &gregs[11]);
 err |= __put_user(regs->r13, &gregs[12]);
 err |= __put_user(regs->r14, &gregs[13]);
 err |= __put_user(regs->r15, &gregs[14]);
 err |= __put_user(sw->r16, &gregs[15]);
 err |= __put_user(sw->r17, &gregs[16]);
 err |= __put_user(sw->r18, &gregs[17]);
 err |= __put_user(sw->r19, &gregs[18]);
 err |= __put_user(sw->r20, &gregs[19]);
 err |= __put_user(sw->r21, &gregs[20]);
 err |= __put_user(sw->r22, &gregs[21]);
 err |= __put_user(sw->r23, &gregs[22]);
 err |= __put_user(regs->ra, &gregs[23]);
 err |= __put_user(sw->fp, &gregs[24]);
 err |= __put_user(sw->gp, &gregs[25]);
 err |= __put_user(regs->ea, &gregs[27]);
 err |= __put_user(regs->sp, &gregs[28]);
 return err;
}
