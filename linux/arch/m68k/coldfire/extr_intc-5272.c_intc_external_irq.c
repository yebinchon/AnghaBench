
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_desc {int irq_data; } ;
struct TYPE_2__ {int (* irq_ack ) (int *) ;} ;


 int handle_simple_irq (struct irq_desc*) ;
 TYPE_1__* irq_desc_get_chip (struct irq_desc*) ;
 int stub1 (int *) ;

__attribute__((used)) static void intc_external_irq(struct irq_desc *desc)
{
 irq_desc_get_chip(desc)->irq_ack(&desc->irq_data);
 handle_simple_irq(desc);
}
