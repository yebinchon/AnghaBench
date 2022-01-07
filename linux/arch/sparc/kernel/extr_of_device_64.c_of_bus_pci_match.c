
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int of_find_property (struct device_node*,char*,int *) ;
 char* of_get_property (struct device_node*,char*,int *) ;
 scalar_t__ of_node_name_eq (struct device_node*,char*) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int of_bus_pci_match(struct device_node *np)
{
 if (of_node_name_eq(np, "pci")) {
  const char *model = of_get_property(np, "model", ((void*)0));

  if (model && !strcmp(model, "SUNW,simba"))
   return 0;







  if (!of_find_property(np, "ranges", ((void*)0)))
   return 0;

  return 1;
 }

 return 0;
}
