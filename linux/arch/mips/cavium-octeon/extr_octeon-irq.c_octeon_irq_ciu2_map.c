
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int dummy; } ;
typedef int irq_hw_number_t ;


 int EINVAL ;
 int handle_edge_irq ;
 int handle_level_irq ;
 int octeon_irq_chip_ciu2 ;
 int octeon_irq_chip_ciu2_edge ;
 scalar_t__ octeon_irq_ciu2_is_edge (unsigned int,unsigned int) ;
 scalar_t__** octeon_irq_ciu_to_irq ;
 int octeon_irq_set_ciu_mapping (unsigned int,unsigned int,unsigned int,int ,int *,int ) ;

__attribute__((used)) static int octeon_irq_ciu2_map(struct irq_domain *d,
          unsigned int virq, irq_hw_number_t hw)
{
 unsigned int line = hw >> 6;
 unsigned int bit = hw & 63;





 if (line == 7)
  return 0;

 if (line > 7 || octeon_irq_ciu_to_irq[line][bit] != 0)
  return -EINVAL;

 if (octeon_irq_ciu2_is_edge(line, bit))
  octeon_irq_set_ciu_mapping(virq, line, bit, 0,
        &octeon_irq_chip_ciu2_edge,
        handle_edge_irq);
 else
  octeon_irq_set_ciu_mapping(virq, line, bit, 0,
        &octeon_irq_chip_ciu2,
        handle_level_irq);

 return 0;
}
