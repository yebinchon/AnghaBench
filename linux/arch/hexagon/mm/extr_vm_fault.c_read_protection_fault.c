
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int FLT_LOAD ;
 int do_page_fault (unsigned long,int ,struct pt_regs*) ;
 unsigned long pt_badva (struct pt_regs*) ;

void read_protection_fault(struct pt_regs *regs)
{
 unsigned long badvadr = pt_badva(regs);

 do_page_fault(badvadr, FLT_LOAD, regs);
}
