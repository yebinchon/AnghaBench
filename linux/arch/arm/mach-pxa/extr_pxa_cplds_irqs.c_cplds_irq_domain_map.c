
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {struct cplds* host_data; } ;
struct cplds {int dummy; } ;
typedef int irq_hw_number_t ;


 int cplds_irq_chip ;
 int handle_level_irq ;
 int irq_set_chip_and_handler (unsigned int,int *,int ) ;
 int irq_set_chip_data (unsigned int,struct cplds*) ;

__attribute__((used)) static int cplds_irq_domain_map(struct irq_domain *d, unsigned int irq,
       irq_hw_number_t hwirq)
{
 struct cplds *fpga = d->host_data;

 irq_set_chip_and_handler(irq, &cplds_irq_chip, handle_level_irq);
 irq_set_chip_data(irq, fpga);

 return 0;
}
