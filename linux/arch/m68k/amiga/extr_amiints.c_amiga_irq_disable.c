
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_data {int irq; } ;
struct TYPE_2__ {int intena; } ;


 int IRQ_USER ;
 TYPE_1__ amiga_custom ;

__attribute__((used)) static void amiga_irq_disable(struct irq_data *data)
{
 amiga_custom.intena = 1 << (data->irq - IRQ_USER);
}
