
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;


 int EINVAL ;






 int LS1X_INTC_INTEDGE (unsigned int) ;
 int LS1X_INTC_INTPOL (unsigned int) ;
 int LS1X_IRQ_BASE ;
 int __raw_readl (int ) ;
 int __raw_writel (int,int ) ;

__attribute__((used)) static int ls1x_irq_settype(struct irq_data *d, unsigned int type)
{
 unsigned int bit = (d->irq - LS1X_IRQ_BASE) & 0x1f;
 unsigned int n = (d->irq - LS1X_IRQ_BASE) >> 5;

 switch (type) {
 case 130:
  __raw_writel(__raw_readl(LS1X_INTC_INTPOL(n))
   | (1 << bit), LS1X_INTC_INTPOL(n));
  __raw_writel(__raw_readl(LS1X_INTC_INTEDGE(n))
   & ~(1 << bit), LS1X_INTC_INTEDGE(n));
  break;
 case 129:
  __raw_writel(__raw_readl(LS1X_INTC_INTPOL(n))
   & ~(1 << bit), LS1X_INTC_INTPOL(n));
  __raw_writel(__raw_readl(LS1X_INTC_INTEDGE(n))
   & ~(1 << bit), LS1X_INTC_INTEDGE(n));
  break;
 case 131:
  __raw_writel(__raw_readl(LS1X_INTC_INTPOL(n))
   | (1 << bit), LS1X_INTC_INTPOL(n));
  __raw_writel(__raw_readl(LS1X_INTC_INTEDGE(n))
   | (1 << bit), LS1X_INTC_INTEDGE(n));
  break;
 case 132:
  __raw_writel(__raw_readl(LS1X_INTC_INTPOL(n))
   & ~(1 << bit), LS1X_INTC_INTPOL(n));
  __raw_writel(__raw_readl(LS1X_INTC_INTEDGE(n))
   | (1 << bit), LS1X_INTC_INTEDGE(n));
  break;
 case 133:
  __raw_writel(__raw_readl(LS1X_INTC_INTPOL(n))
   & ~(1 << bit), LS1X_INTC_INTPOL(n));
  __raw_writel(__raw_readl(LS1X_INTC_INTEDGE(n))
   | (1 << bit), LS1X_INTC_INTEDGE(n));
  break;
 case 128:
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
