
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int of_device_is_compatible (struct device_node*,char*) ;

__attribute__((used)) static bool xive_native_match(struct device_node *node)
{
 return of_device_is_compatible(node, "ibm,opal-xive-vc");
}
