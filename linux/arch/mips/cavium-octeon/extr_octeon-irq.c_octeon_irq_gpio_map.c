
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_irq_gpio_domain_data {int base_hwirq; } ;
struct irq_domain {struct octeon_irq_gpio_domain_data* host_data; } ;
typedef int irq_hw_number_t ;


 unsigned int ARRAY_SIZE (scalar_t__**) ;
 int EINVAL ;
 int handle_level_irq ;
 scalar_t__** octeon_irq_ciu_to_irq ;
 int octeon_irq_gpio_chip ;
 int octeon_irq_set_ciu_mapping (unsigned int,unsigned int,unsigned int,int ,int ,int ) ;

__attribute__((used)) static int octeon_irq_gpio_map(struct irq_domain *d,
          unsigned int virq, irq_hw_number_t hw)
{
 struct octeon_irq_gpio_domain_data *gpiod = d->host_data;
 unsigned int line, bit;
 int r;

 line = (hw + gpiod->base_hwirq) >> 6;
 bit = (hw + gpiod->base_hwirq) & 63;
 if (line >= ARRAY_SIZE(octeon_irq_ciu_to_irq) ||
  octeon_irq_ciu_to_irq[line][bit] != 0)
  return -EINVAL;






 r = octeon_irq_set_ciu_mapping(virq, line, bit, hw,
           octeon_irq_gpio_chip, handle_level_irq);
 return r;
}
