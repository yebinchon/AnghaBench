
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device_node {struct device_node* sibling; struct device_node* parent; struct device_node* child; } ;
typedef int __be32 ;


 int PCI_CLASS_BRIDGE_CARDBUS ;
 int PCI_CLASS_BRIDGE_PCI ;
 int * of_get_property (struct device_node*,char*,int *) ;
 int of_read_number (int const*,int) ;

void *pci_traverse_device_nodes(struct device_node *start,
    void *(*fn)(struct device_node *, void *),
    void *data)
{
 struct device_node *dn, *nextdn;
 void *ret;


 for (dn = start->child; dn; dn = nextdn) {
  const __be32 *classp;
  u32 class = 0;

  nextdn = ((void*)0);
  classp = of_get_property(dn, "class-code", ((void*)0));
  if (classp)
   class = of_read_number(classp, 1);

  if (fn) {
   ret = fn(dn, data);
   if (ret)
    return ret;
  }


  if (dn->child && ((class >> 8) == PCI_CLASS_BRIDGE_PCI ||
      (class >> 8) == PCI_CLASS_BRIDGE_CARDBUS))

   nextdn = dn->child;
  else if (dn->sibling)

   nextdn = dn->sibling;
  if (!nextdn) {

   do {
    dn = dn->parent;
    if (dn == start)
     return ((void*)0);
   } while (dn->sibling == ((void*)0));
   nextdn = dn->sibling;
  }
 }
 return ((void*)0);
}
