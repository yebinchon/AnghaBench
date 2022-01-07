
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 struct device_node* of_find_node_by_name (int *,char*) ;
 int of_node_put (struct device_node*) ;
 int printk (char*) ;

int find_via_cuda(void)
{
 struct device_node *dn = of_find_node_by_name(((void*)0), "via-cuda");

 if (!dn)
  return 0;
 of_node_put(dn);
 printk("WARNING ! Your machine is CUDA-based but your kernel\n");
 printk("          wasn't compiled with CONFIG_ADB_CUDA option !\n");
 return 0;
}
