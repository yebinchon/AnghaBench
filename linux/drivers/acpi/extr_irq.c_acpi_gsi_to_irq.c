
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_domain {int dummy; } ;


 int DOMAIN_BUS_ANY ;
 int EINVAL ;
 int acpi_gsi_domain_id ;
 unsigned int irq_find_mapping (struct irq_domain*,int ) ;
 struct irq_domain* irq_find_matching_fwnode (int ,int ) ;

int acpi_gsi_to_irq(u32 gsi, unsigned int *irq)
{
 struct irq_domain *d = irq_find_matching_fwnode(acpi_gsi_domain_id,
       DOMAIN_BUS_ANY);

 *irq = irq_find_mapping(d, gsi);




 return (*irq > 0) ? 0 : -EINVAL;
}
