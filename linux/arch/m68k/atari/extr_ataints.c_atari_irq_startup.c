
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {unsigned int irq; } ;


 int atari_enable_irq (unsigned int) ;
 int atari_turnon_irq (unsigned int) ;
 int m68k_irq_startup (struct irq_data*) ;

__attribute__((used)) static unsigned int atari_irq_startup(struct irq_data *data)
{
 unsigned int irq = data->irq;

 m68k_irq_startup(data);
 atari_turnon_irq(irq);
 atari_enable_irq(irq);
 return 0;
}
