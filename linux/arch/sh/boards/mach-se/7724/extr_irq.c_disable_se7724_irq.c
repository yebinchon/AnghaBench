
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {unsigned int irq; } ;
struct fpga_irq {unsigned int base; int mraddr; } ;


 int __raw_readw (int ) ;
 int __raw_writew (int,int ) ;
 int fpga2irq (unsigned int) ;
 struct fpga_irq get_fpga_irq (int ) ;

__attribute__((used)) static void disable_se7724_irq(struct irq_data *data)
{
 unsigned int irq = data->irq;
 struct fpga_irq set = get_fpga_irq(fpga2irq(irq));
 unsigned int bit = irq - set.base;
 __raw_writew(__raw_readw(set.mraddr) | 0x0001 << bit, set.mraddr);
}
