
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int PXA_ISA_IRQ (int ) ;
 int* zeus_isa_irq_map ;

__attribute__((used)) static inline int zeus_irq_to_bitmask(unsigned int irq)
{
 return zeus_isa_irq_map[irq - PXA_ISA_IRQ(0)];
}
