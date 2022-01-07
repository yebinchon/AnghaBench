
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DMABRGCR ;
 unsigned long __raw_readl (int ) ;
 int __raw_writel (unsigned long,int ) ;

__attribute__((used)) static void dmabrg_enable_irq(unsigned int dmairq)
{
 unsigned long dcr;
 dcr = __raw_readl(DMABRGCR);
 dcr |= (1 << ((dmairq > 1) ? dmairq + 22 : dmairq + 8));
 __raw_writel(dcr, DMABRGCR);
}
