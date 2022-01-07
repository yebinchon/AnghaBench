
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pt_regs {int ARM_pc; } ;


 int * PCI_ISR ;
 int PCI_ISR_PFE ;
 int PCI_STATUS ;
 int PCI_STATUS_REC_MASTER_ABORT ;
 int local_read_config (int ,int,int *) ;
 int local_write_config (int ,int,int ) ;
 int pr_debug (char*,unsigned long,int ,int ) ;

__attribute__((used)) static int abort_handler(unsigned long addr, unsigned int fsr, struct pt_regs *regs)
{
 u32 isr, status;

 isr = *PCI_ISR;
 local_read_config(PCI_STATUS, 2, &status);
 pr_debug("PCI: abort_handler addr = %#lx, isr = %#x, "
  "status = %#x\n", addr, isr, status);


 *PCI_ISR = PCI_ISR_PFE;
 status |= PCI_STATUS_REC_MASTER_ABORT;
 local_write_config(PCI_STATUS, 2, status);





 if (fsr & (1 << 10))
  regs->ARM_pc += 4;

 return 0;
}
