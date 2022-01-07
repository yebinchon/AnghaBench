
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int DMABRGCR ;
 scalar_t__ DMABRGIRQ_A0TXF ;
 scalar_t__ DMABRGIRQ_USBDMA ;
 scalar_t__ DMABRGIRQ_USBDMAERR ;
 int IRQ_HANDLED ;
 unsigned int __ffs (unsigned long) ;
 unsigned long __raw_readl (int ) ;
 int __raw_writel (unsigned long,int ) ;
 int dmabrg_call_handler (scalar_t__) ;

__attribute__((used)) static irqreturn_t dmabrg_irq(int irq, void *data)
{
 unsigned long dcr;
 unsigned int i;

 dcr = __raw_readl(DMABRGCR);
 __raw_writel(dcr & ~0x00ff0003, DMABRGCR);
 dcr &= dcr >> 8;


 if (dcr & 1)
  dmabrg_call_handler(DMABRGIRQ_USBDMA);
 if (dcr & 2)
  dmabrg_call_handler(DMABRGIRQ_USBDMAERR);


 dcr >>= 16;
 while (dcr) {
  i = __ffs(dcr);
  dcr &= dcr - 1;
  dmabrg_call_handler(i + DMABRGIRQ_A0TXF);
 }
 return IRQ_HANDLED;
}
