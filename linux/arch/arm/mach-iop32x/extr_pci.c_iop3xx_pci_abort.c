
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int ARM_pc; int ARM_lr; } ;


 int DBG (char*,unsigned long,unsigned int,int,int ) ;

__attribute__((used)) static int
iop3xx_pci_abort(unsigned long addr, unsigned int fsr, struct pt_regs *regs)
{
 DBG("PCI abort: address = 0x%08lx fsr = 0x%03x PC = 0x%08lx LR = 0x%08lx\n",
  addr, fsr, regs->ARM_pc, regs->ARM_lr);





 if (fsr & (1 << 10))
  regs->ARM_pc += 4;

 return 0;
}
