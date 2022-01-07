
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;


 int LOONGSON_INTENSET ;
 int LOONGSON_IRQ_BASE ;
 int mmiowb () ;

__attribute__((used)) static inline void bonito_irq_enable(struct irq_data *d)
{
 LOONGSON_INTENSET = (1 << (d->irq - LOONGSON_IRQ_BASE));
 mmiowb();
}
