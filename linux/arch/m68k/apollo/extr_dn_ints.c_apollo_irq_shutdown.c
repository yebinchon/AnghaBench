
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {unsigned int irq; } ;


 scalar_t__ pica ;
 scalar_t__ picb ;

void apollo_irq_shutdown(struct irq_data *data)
{
 unsigned int irq = data->irq;

 if (irq < 8)
  *(volatile unsigned char *)(pica+1) |= (1 << irq);
 else
  *(volatile unsigned char *)(picb+1) |= (1 << (irq - 8));
}
