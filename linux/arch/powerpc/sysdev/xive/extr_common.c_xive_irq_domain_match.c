
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_domain {int dummy; } ;
struct device_node {int dummy; } ;
typedef enum irq_domain_bus_token { ____Placeholder_irq_domain_bus_token } irq_domain_bus_token ;
struct TYPE_2__ {int (* match ) (struct device_node*) ;} ;


 int stub1 (struct device_node*) ;
 TYPE_1__* xive_ops ;

__attribute__((used)) static int xive_irq_domain_match(struct irq_domain *h, struct device_node *node,
     enum irq_domain_bus_token bus_token)
{
 return xive_ops->match(node);
}
