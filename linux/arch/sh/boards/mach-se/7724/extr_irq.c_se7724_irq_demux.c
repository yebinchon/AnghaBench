
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int dummy; } ;
struct fpga_irq {unsigned int base; unsigned short mask; int sraddr; } ;


 unsigned short __raw_readw (int ) ;
 int generic_handle_irq (unsigned int) ;
 struct fpga_irq get_fpga_irq (unsigned int) ;
 unsigned int irq_desc_get_irq (struct irq_desc*) ;

__attribute__((used)) static void se7724_irq_demux(struct irq_desc *desc)
{
 unsigned int irq = irq_desc_get_irq(desc);
 struct fpga_irq set = get_fpga_irq(irq);
 unsigned short intv = __raw_readw(set.sraddr);
 unsigned int ext_irq = set.base;

 intv &= set.mask;

 for (; intv; intv >>= 1, ext_irq++) {
  if (!(intv & 1))
   continue;

  generic_handle_irq(ext_irq);
 }
}
