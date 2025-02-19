
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int __set_clk_parents (struct device_node*,int) ;
 int __set_clk_rates (struct device_node*,int) ;

int of_clk_set_defaults(struct device_node *node, bool clk_supplier)
{
 int rc;

 if (!node)
  return 0;

 rc = __set_clk_parents(node, clk_supplier);
 if (rc < 0)
  return rc;

 return __set_clk_rates(node, clk_supplier);
}
