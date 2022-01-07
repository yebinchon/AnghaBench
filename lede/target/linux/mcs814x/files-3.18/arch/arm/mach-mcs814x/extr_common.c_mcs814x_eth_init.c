
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int be32_to_cpup (unsigned int const*) ;
 int mcs814x_eth_buffer_shifting_set (int) ;
 int mcs814x_eth_hardware_filter_set (int) ;
 int mcs814x_eth_ids ;
 int mcs814x_eth_led_cfg_set (int ) ;
 struct device_node* of_find_matching_node (int *,int ) ;
 unsigned int* of_get_property (struct device_node*,char*,int *) ;
 int of_node_put (struct device_node*) ;

__attribute__((used)) static void mcs814x_eth_init(void)
{
 struct device_node *np;
 const unsigned int *intspec;

 np = of_find_matching_node(((void*)0), mcs814x_eth_ids);
 if (!np)
  return;


 mcs814x_eth_hardware_filter_set(1);

 intspec = of_get_property(np, "nuport-mac,buffer-shifting", ((void*)0));
 if (!intspec)
  mcs814x_eth_buffer_shifting_set(0);
 else
  mcs814x_eth_buffer_shifting_set(1);

 intspec = of_get_property(np, "nuport-mac,link-activity", ((void*)0));
 if (intspec)
  mcs814x_eth_led_cfg_set(be32_to_cpup(intspec));

 of_node_put(np);
}
