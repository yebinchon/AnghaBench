
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {scalar_t__ irq; } ;


 int __vmintop_globen (long) ;

__attribute__((used)) static void eoi_irq(struct irq_data *data)
{
 __vmintop_globen((long) data->irq);
}
