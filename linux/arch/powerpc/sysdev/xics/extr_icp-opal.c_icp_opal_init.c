
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int ENODEV ;
 int icp_opal_ops ;
 int * icp_ops ;
 struct device_node* of_find_compatible_node (int *,int *,char*) ;
 int printk (char*) ;

int icp_opal_init(void)
{
 struct device_node *np;

 np = of_find_compatible_node(((void*)0), ((void*)0), "ibm,opal-intc");
 if (!np)
  return -ENODEV;

 icp_ops = &icp_opal_ops;

 printk("XICS: Using OPAL ICP fallbacks\n");

 return 0;
}
