
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_ciu_chip_data {int line; int bit; int gpio_line; } ;
struct irq_chip {int dummy; } ;
typedef int irq_flow_handler_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int irq_set_chip_and_handler (int,struct irq_chip*,int ) ;
 int irq_set_chip_data (int,struct octeon_ciu_chip_data*) ;
 struct octeon_ciu_chip_data* kzalloc (int,int ) ;
 int** octeon_irq_ciu_to_irq ;

__attribute__((used)) static int octeon_irq_set_ciu_mapping(int irq, int line, int bit, int gpio_line,
          struct irq_chip *chip,
          irq_flow_handler_t handler)
{
 struct octeon_ciu_chip_data *cd;

 cd = kzalloc(sizeof(*cd), GFP_KERNEL);
 if (!cd)
  return -ENOMEM;

 irq_set_chip_and_handler(irq, chip, handler);

 cd->line = line;
 cd->bit = bit;
 cd->gpio_line = gpio_line;

 irq_set_chip_data(irq, cd);
 octeon_irq_ciu_to_irq[line][bit] = irq;
 return 0;
}
