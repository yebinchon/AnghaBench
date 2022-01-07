
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_data {unsigned int irq; } ;
struct TYPE_2__ {unsigned int fpgaIrq; int mapped; } ;


 int MICRODEV_FPGA_INTC_MASK (unsigned int) ;
 int MICRODEV_FPGA_INTDSB_REG ;
 unsigned int NUM_EXTERNAL_IRQS ;
 int __raw_writel (int ,int ) ;
 TYPE_1__* fpgaIrqTable ;

__attribute__((used)) static void disable_microdev_irq(struct irq_data *data)
{
 unsigned int irq = data->irq;
 unsigned int fpgaIrq;

 if (irq >= NUM_EXTERNAL_IRQS)
  return;
 if (!fpgaIrqTable[irq].mapped)
  return;

 fpgaIrq = fpgaIrqTable[irq].fpgaIrq;


 __raw_writel(MICRODEV_FPGA_INTC_MASK(fpgaIrq), MICRODEV_FPGA_INTDSB_REG);
}
