
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ EPLD_MASK_BASE ;
 scalar_t__ EPLD_STATUS_BASE ;
 int PCI2_IRQ ;
 int SMSC_IRQ ;
 int START_EXT_IRQS ;
 int __raw_readl (scalar_t__) ;
 int* intc_evt_to_irq ;

int cayman_irq_demux(int evt)
{
 int irq = intc_evt_to_irq[evt];

 if (irq == SMSC_IRQ) {
  unsigned long status;
  int i;

  status = __raw_readl(EPLD_STATUS_BASE) &
    __raw_readl(EPLD_MASK_BASE) & 0xff;
  if (status == 0) {
   irq = -1;
  } else {
   for (i=0; i<8; i++) {
    if (status & (1<<i))
     break;
   }
   irq = START_EXT_IRQS + i;
  }
 }

 if (irq == PCI2_IRQ) {
  unsigned long status;
  int i;

  status = __raw_readl(EPLD_STATUS_BASE + 3 * sizeof(u32)) &
    __raw_readl(EPLD_MASK_BASE + 3 * sizeof(u32)) & 0xff;
  if (status == 0) {
   irq = -1;
  } else {
   for (i=0; i<8; i++) {
    if (status & (1<<i))
     break;
   }
   irq = START_EXT_IRQS + (3 * 8) + i;
  }
 }

 return irq;
}
