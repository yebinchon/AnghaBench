
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct octeon_irq_cib_host_data {scalar_t__ max_bits; } ;
struct octeon_irq_cib_chip_data {scalar_t__ bit; struct octeon_irq_cib_host_data* host_data; } ;
struct irq_domain {struct octeon_irq_cib_host_data* host_data; } ;
typedef scalar_t__ irq_hw_number_t ;
struct TYPE_2__ {int name; } ;


 int EINVAL ;
 int GFP_KERNEL ;
 int handle_simple_irq ;
 TYPE_1__* irq_domain_get_of_node (struct irq_domain*) ;
 int irq_set_chip_and_handler (unsigned int,int *,int ) ;
 int irq_set_chip_data (unsigned int,struct octeon_irq_cib_chip_data*) ;
 struct octeon_irq_cib_chip_data* kzalloc (int,int ) ;
 int octeon_irq_chip_cib ;
 int pr_err (char*,int ,unsigned int) ;

__attribute__((used)) static int octeon_irq_cib_map(struct irq_domain *d,
         unsigned int virq, irq_hw_number_t hw)
{
 struct octeon_irq_cib_host_data *host_data = d->host_data;
 struct octeon_irq_cib_chip_data *cd;

 if (hw >= host_data->max_bits) {
  pr_err("ERROR: %s mapping %u is to big!\n",
         irq_domain_get_of_node(d)->name, (unsigned)hw);
  return -EINVAL;
 }

 cd = kzalloc(sizeof(*cd), GFP_KERNEL);
 cd->host_data = host_data;
 cd->bit = hw;

 irq_set_chip_and_handler(virq, &octeon_irq_chip_cib,
     handle_simple_irq);
 irq_set_chip_data(virq, cd);
 return 0;
}
