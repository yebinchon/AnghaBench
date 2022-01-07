
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpga_irq {int base; int mask; int mraddr; int sraddr; } ;


 int IRQ0_BASE ;

 int IRQ0_MASK ;
 int IRQ0_MR ;
 int IRQ0_SR ;
 int IRQ1_BASE ;

 int IRQ1_MASK ;
 int IRQ1_MR ;
 int IRQ1_SR ;
 int IRQ2_BASE ;
 int IRQ2_MASK ;
 int IRQ2_MR ;
 int IRQ2_SR ;

__attribute__((used)) static struct fpga_irq get_fpga_irq(unsigned int irq)
{
 struct fpga_irq set;

 switch (irq) {
 case 129:
  set.sraddr = IRQ0_SR;
  set.mraddr = IRQ0_MR;
  set.mask = IRQ0_MASK;
  set.base = IRQ0_BASE;
  break;
 case 128:
  set.sraddr = IRQ1_SR;
  set.mraddr = IRQ1_MR;
  set.mask = IRQ1_MASK;
  set.base = IRQ1_BASE;
  break;
 default:
  set.sraddr = IRQ2_SR;
  set.mraddr = IRQ2_MR;
  set.mask = IRQ2_MASK;
  set.base = IRQ2_BASE;
  break;
 }

 return set;
}
