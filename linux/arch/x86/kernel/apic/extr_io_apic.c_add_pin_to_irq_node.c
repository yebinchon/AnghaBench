
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_chip_data {int dummy; } ;


 scalar_t__ __add_pin_to_irq_node (struct mp_chip_data*,int,int,int) ;
 int panic (char*) ;

__attribute__((used)) static void add_pin_to_irq_node(struct mp_chip_data *data,
    int node, int apic, int pin)
{
 if (__add_pin_to_irq_node(data, node, apic, pin))
  panic("IO-APIC: failed to add irq-pin. Can not proceed\n");
}
