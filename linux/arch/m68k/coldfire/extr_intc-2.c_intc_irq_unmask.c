
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_data {unsigned int irq; } ;


 unsigned long MCFICM_INTC0 ;
 unsigned long MCFICM_INTC1 ;
 scalar_t__ MCFINTC_IMRH ;
 scalar_t__ MCFINTC_IMRL ;
 unsigned int MCFINT_VECBASE ;
 int __raw_readl (unsigned long) ;
 int __raw_writel (int,unsigned long) ;

__attribute__((used)) static void intc_irq_unmask(struct irq_data *d)
{
 unsigned int irq = d->irq - MCFINT_VECBASE;
 unsigned long imraddr;
 u32 val, imrbit;




 imraddr = MCFICM_INTC0;

 imraddr += ((irq & 0x20) ? MCFINTC_IMRH : MCFINTC_IMRL);
 imrbit = 0x1 << (irq & 0x1f);


 if ((irq & 0x20) == 0)
  imrbit |= 0x1;

 val = __raw_readl(imraddr);
 __raw_writel(val & ~imrbit, imraddr);
}
