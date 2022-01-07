
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;


 int MSYSINT2REG ;
 int SYSINT2_IRQ_TO_PIN (int ) ;
 int icu2_clear (int ,int) ;

__attribute__((used)) static void disable_sysint2_irq(struct irq_data *d)
{
 icu2_clear(MSYSINT2REG, 1 << SYSINT2_IRQ_TO_PIN(d->irq));
}
