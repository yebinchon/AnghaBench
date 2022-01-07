
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl1_traplog {int dummy; } ;
struct pt_regs {int dummy; } ;


 int die_if_kernel (char*,struct pt_regs*) ;
 int dump_tl1_traplog (struct tl1_traplog*) ;
 int exception_enter () ;

void do_fpieee_tl1(struct pt_regs *regs)
{
 exception_enter();
 dump_tl1_traplog((struct tl1_traplog *)(regs + 1));
 die_if_kernel("TL1: FPU IEEE Exception", regs);
}
