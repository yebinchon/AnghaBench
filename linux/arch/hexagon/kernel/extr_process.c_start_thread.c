
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int memset (struct pt_regs*,int ,int) ;
 int pt_set_elr (struct pt_regs*,unsigned long) ;
 int pt_set_rte_sp (struct pt_regs*,unsigned long) ;
 int pt_set_usermode (struct pt_regs*) ;

void start_thread(struct pt_regs *regs, unsigned long pc, unsigned long sp)
{

 memset(regs, 0, sizeof(*regs));

 pt_set_usermode(regs);
 pt_set_elr(regs, pc);
 pt_set_rte_sp(regs, sp);
}
