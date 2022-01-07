
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sa1111 {int irqdomain; } ;
typedef int irq_hw_number_t ;


 int irq_create_mapping (int ,int ) ;

__attribute__((used)) static int sa1111_map_irq(struct sa1111 *sachip, irq_hw_number_t hwirq)
{
 return irq_create_mapping(sachip->irqdomain, hwirq);
}
