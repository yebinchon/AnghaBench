
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int gp; int r28; int r27; int r25; int r24; int r23; int r22; int r21; int r20; int r19; int r18; int r17; int r16; int r8; int r7; int r6; int r5; int r4; int r3; int r2; int r1; int r0; scalar_t__ r26; scalar_t__ pc; int ps; } ;


 int __halt () ;
 int print_tainted () ;
 int printk (char*,void*,...) ;

void
dik_show_regs(struct pt_regs *regs, unsigned long *r9_15)
{
 printk("pc = [<%016lx>]  ra = [<%016lx>]  ps = %04lx    %s\n",
        regs->pc, regs->r26, regs->ps, print_tainted());
 printk("pc is at %pSR\n", (void *)regs->pc);
 printk("ra is at %pSR\n", (void *)regs->r26);
 printk("v0 = %016lx  t0 = %016lx  t1 = %016lx\n",
        regs->r0, regs->r1, regs->r2);
 printk("t2 = %016lx  t3 = %016lx  t4 = %016lx\n",
         regs->r3, regs->r4, regs->r5);
 printk("t5 = %016lx  t6 = %016lx  t7 = %016lx\n",
        regs->r6, regs->r7, regs->r8);

 if (r9_15) {
  printk("s0 = %016lx  s1 = %016lx  s2 = %016lx\n",
         r9_15[9], r9_15[10], r9_15[11]);
  printk("s3 = %016lx  s4 = %016lx  s5 = %016lx\n",
         r9_15[12], r9_15[13], r9_15[14]);
  printk("s6 = %016lx\n", r9_15[15]);
 }

 printk("a0 = %016lx  a1 = %016lx  a2 = %016lx\n",
        regs->r16, regs->r17, regs->r18);
 printk("a3 = %016lx  a4 = %016lx  a5 = %016lx\n",
         regs->r19, regs->r20, regs->r21);
  printk("t8 = %016lx  t9 = %016lx  t10= %016lx\n",
        regs->r22, regs->r23, regs->r24);
 printk("t11= %016lx  pv = %016lx  at = %016lx\n",
        regs->r25, regs->r27, regs->r28);
 printk("gp = %016lx  sp = %p\n", regs->gp, regs+1);



}
