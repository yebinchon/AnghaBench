
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int ENODEV ;
 int icp_hv_ops ;
 int * icp_ops ;
 struct device_node* of_find_compatible_node (int *,int *,char*) ;
 struct device_node* of_find_node_by_type (int *,char*) ;

int icp_hv_init(void)
{
 struct device_node *np;

 np = of_find_compatible_node(((void*)0), ((void*)0), "ibm,ppc-xicp");
 if (!np)
  np = of_find_node_by_type(((void*)0),
        "PowerPC-External-Interrupt-Presentation");
 if (!np)
  return -ENODEV;

 icp_ops = &icp_hv_ops;

 return 0;
}
