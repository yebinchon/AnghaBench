
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {unsigned long dsisr; } ;


 unsigned long ESR_IMCP ;
 int SPRN_ESR ;
 int mtspr (int ,unsigned long) ;
 int printk (char*) ;

int machine_check_4xx(struct pt_regs *regs)
{
 unsigned long reason = regs->dsisr;

 if (reason & ESR_IMCP) {
  printk("Instruction");
  mtspr(SPRN_ESR, reason & ~ESR_IMCP);
 } else
  printk("Data");
 printk(" machine check in kernel mode.\n");

 return 0;
}
