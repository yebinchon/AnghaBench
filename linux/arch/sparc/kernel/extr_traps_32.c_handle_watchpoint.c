
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 unsigned long PSR_PS ;
 int panic (char*) ;
 int printk (char*,unsigned long,unsigned long,unsigned long) ;

void handle_watchpoint(struct pt_regs *regs, unsigned long pc, unsigned long npc,
         unsigned long psr)
{




 if(psr & PSR_PS)
  panic("Tell me what a watchpoint trap is, and I'll then deal "
        "with such a beast...");
}
