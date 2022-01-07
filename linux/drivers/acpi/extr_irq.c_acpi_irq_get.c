
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; int end; unsigned long flags; } ;
struct irq_fwspec {int fwnode; } ;
struct irq_domain {int dummy; } ;
typedef int acpi_handle ;


 int DOMAIN_BUS_ANY ;
 int EINVAL ;
 int EPROBE_DEFER ;
 int acpi_irq_parse_one (int ,unsigned int,struct irq_fwspec*,unsigned long*) ;
 int irq_create_fwspec_mapping (struct irq_fwspec*) ;
 struct irq_domain* irq_find_matching_fwnode (int ,int ) ;

int acpi_irq_get(acpi_handle handle, unsigned int index, struct resource *res)
{
 struct irq_fwspec fwspec;
 struct irq_domain *domain;
 unsigned long flags;
 int rc;

 rc = acpi_irq_parse_one(handle, index, &fwspec, &flags);
 if (rc)
  return rc;

 domain = irq_find_matching_fwnode(fwspec.fwnode, DOMAIN_BUS_ANY);
 if (!domain)
  return -EPROBE_DEFER;

 rc = irq_create_fwspec_mapping(&fwspec);
 if (rc <= 0)
  return -EINVAL;

 res->start = rc;
 res->end = rc;
 res->flags = flags;

 return 0;
}
