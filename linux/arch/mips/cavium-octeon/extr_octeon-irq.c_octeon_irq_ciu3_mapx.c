
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_ciu_chip_data {int current_cpu; int ciu_node; int ciu3_addr; int intsn; } ;
struct octeon_ciu3_info {int node; int ciu3_addr; } ;
struct irq_domain {struct octeon_ciu3_info* host_data; } ;
struct irq_chip {int dummy; } ;
typedef int irq_hw_number_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int handle_edge_irq ;
 int irq_set_chip_and_handler (unsigned int,struct irq_chip*,int ) ;
 int irq_set_chip_data (unsigned int,struct octeon_ciu_chip_data*) ;
 struct octeon_ciu_chip_data* kzalloc_node (int,int ,int ) ;

int octeon_irq_ciu3_mapx(struct irq_domain *d, unsigned int virq,
    irq_hw_number_t hw, struct irq_chip *chip)
{
 struct octeon_ciu3_info *ciu3_info = d->host_data;
 struct octeon_ciu_chip_data *cd = kzalloc_node(sizeof(*cd), GFP_KERNEL,
             ciu3_info->node);
 if (!cd)
  return -ENOMEM;
 cd->intsn = hw;
 cd->current_cpu = -1;
 cd->ciu3_addr = ciu3_info->ciu3_addr;
 cd->ciu_node = ciu3_info->node;
 irq_set_chip_and_handler(virq, chip, handle_edge_irq);
 irq_set_chip_data(virq, cd);

 return 0;
}
