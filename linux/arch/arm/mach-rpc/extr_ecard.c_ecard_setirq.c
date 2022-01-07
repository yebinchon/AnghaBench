
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct expansion_card_ops {int dummy; } ;
struct expansion_card {struct expansion_card_ops const* ops; void* irq_data; } ;


 int barrier () ;

void ecard_setirq(struct expansion_card *ec, const struct expansion_card_ops *ops, void *irq_data)
{
 ec->irq_data = irq_data;
 barrier();
 ec->ops = ops;
}
