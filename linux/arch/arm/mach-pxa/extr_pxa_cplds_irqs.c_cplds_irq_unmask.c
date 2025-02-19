
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;
struct cplds {unsigned int irq_mask; scalar_t__ base; } ;


 unsigned int BIT (unsigned int) ;
 scalar_t__ FPGA_IRQ_MASK_EN ;
 scalar_t__ FPGA_IRQ_SET_CLR ;
 struct cplds* irq_data_get_irq_chip_data (struct irq_data*) ;
 unsigned int irqd_to_hwirq (struct irq_data*) ;
 unsigned int readl (scalar_t__) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void cplds_irq_unmask(struct irq_data *d)
{
 struct cplds *fpga = irq_data_get_irq_chip_data(d);
 unsigned int cplds_irq = irqd_to_hwirq(d);
 unsigned int set, bit = BIT(cplds_irq);

 set = readl(fpga->base + FPGA_IRQ_SET_CLR);
 writel(set & ~bit, fpga->base + FPGA_IRQ_SET_CLR);

 fpga->irq_mask |= bit;
 writel(fpga->irq_mask, fpga->base + FPGA_IRQ_MASK_EN);
}
