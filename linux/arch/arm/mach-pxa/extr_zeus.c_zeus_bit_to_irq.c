
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PXA_ISA_IRQ (int ) ;
 int* zeus_isa_irqs ;

__attribute__((used)) static inline int zeus_bit_to_irq(int bit)
{
 return zeus_isa_irqs[bit] + PXA_ISA_IRQ(0);
}
