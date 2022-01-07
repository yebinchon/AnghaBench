
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {scalar_t__ irq; } ;


 int __vmintop_locen (long) ;

__attribute__((used)) static void unmask_irq(struct irq_data *data)
{
 __vmintop_locen((long) data->irq);
}
