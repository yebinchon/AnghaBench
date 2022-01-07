
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {unsigned int irq; } ;


 unsigned int IRQ_AUTO_4 ;
 size_t VEC_INT4 ;
 int atari_disable_irq (unsigned int) ;
 int atari_turnoff_irq (unsigned int) ;
 int falcon_hblhandler ;
 int m68k_irq_shutdown (struct irq_data*) ;
 int * vectors ;

__attribute__((used)) static void atari_irq_shutdown(struct irq_data *data)
{
 unsigned int irq = data->irq;

 atari_disable_irq(irq);
 atari_turnoff_irq(irq);
 m68k_irq_shutdown(data);

 if (irq == IRQ_AUTO_4)
     vectors[VEC_INT4] = falcon_hblhandler;
}
