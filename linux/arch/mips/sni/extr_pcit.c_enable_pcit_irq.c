
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int volatile u32 ;
struct irq_data {int irq; } ;


 scalar_t__ SNI_PCIT_INT_REG ;
 int SNI_PCIT_INT_START ;

__attribute__((used)) static void enable_pcit_irq(struct irq_data *d)
{
 u32 mask = 1 << (d->irq - SNI_PCIT_INT_START + 24);

 *(volatile u32 *)SNI_PCIT_INT_REG |= mask;
}
