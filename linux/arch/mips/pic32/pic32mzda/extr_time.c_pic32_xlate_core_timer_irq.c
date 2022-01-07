
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int DEFAULT_CORE_TIMER_INTERRUPT ;
 scalar_t__ WARN_ON (int) ;
 unsigned int irq_create_mapping (int *,int ) ;
 unsigned int irq_of_parse_and_map (struct device_node*,int ) ;
 struct device_node* of_find_matching_node (int *,int ) ;
 int pic32_infra_match ;

__attribute__((used)) static unsigned int pic32_xlate_core_timer_irq(void)
{
 static struct device_node *node;
 unsigned int irq;

 node = of_find_matching_node(((void*)0), pic32_infra_match);

 if (WARN_ON(!node))
  goto default_map;

 irq = irq_of_parse_and_map(node, 0);
 if (!irq)
  goto default_map;

 return irq;

default_map:

 return irq_create_mapping(((void*)0), DEFAULT_CORE_TIMER_INTERRUPT);
}
