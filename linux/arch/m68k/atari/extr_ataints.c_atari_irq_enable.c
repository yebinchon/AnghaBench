
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;


 int atari_enable_irq (int ) ;

__attribute__((used)) static void atari_irq_enable(struct irq_data *data)
{
 atari_enable_irq(data->irq);
}
