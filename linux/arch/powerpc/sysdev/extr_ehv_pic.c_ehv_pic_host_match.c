
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int dummy; } ;
struct device_node {int dummy; } ;
typedef enum irq_domain_bus_token { ____Placeholder_irq_domain_bus_token } irq_domain_bus_token ;


 struct device_node* irq_domain_get_of_node (struct irq_domain*) ;

__attribute__((used)) static int ehv_pic_host_match(struct irq_domain *h, struct device_node *node,
         enum irq_domain_bus_token bus_token)
{

 struct device_node *of_node = irq_domain_get_of_node(h);
 return of_node == ((void*)0) || of_node == node;
}
