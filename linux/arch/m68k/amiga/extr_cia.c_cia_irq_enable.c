
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {unsigned int irq; } ;


 unsigned char CIA_ICR_SETCLR ;
 unsigned int IRQ_AMIGA_CIAA ;
 unsigned int IRQ_AMIGA_CIAB ;
 int cia_able_irq (int *,unsigned char) ;
 int cia_set_irq (int *,unsigned char) ;
 int ciaa_base ;
 int ciab_base ;

__attribute__((used)) static void cia_irq_enable(struct irq_data *data)
{
 unsigned int irq = data->irq;
 unsigned char mask;

 if (irq >= IRQ_AMIGA_CIAB) {
  mask = 1 << (irq - IRQ_AMIGA_CIAB);
  cia_set_irq(&ciab_base, mask);
  cia_able_irq(&ciab_base, CIA_ICR_SETCLR | mask);
 } else {
  mask = 1 << (irq - IRQ_AMIGA_CIAA);
  cia_set_irq(&ciaa_base, mask);
  cia_able_irq(&ciaa_base, CIA_ICR_SETCLR | mask);
 }
}
