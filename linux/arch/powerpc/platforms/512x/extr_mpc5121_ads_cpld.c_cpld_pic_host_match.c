
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int dummy; } ;
struct device_node {int dummy; } ;
typedef enum irq_domain_bus_token { ____Placeholder_irq_domain_bus_token } irq_domain_bus_token ;


 struct device_node* cpld_pic_node ;

__attribute__((used)) static int
cpld_pic_host_match(struct irq_domain *h, struct device_node *node,
      enum irq_domain_bus_token bus_token)
{
 return cpld_pic_node == node;
}
