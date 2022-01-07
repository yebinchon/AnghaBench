
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_bus {struct pci_bus* parent; } ;
struct eeh_pe {int dummy; } ;
struct device_node {int dummy; } ;


 struct pci_bus* eeh_pe_bus_get (struct eeh_pe*) ;
 char* of_get_property (struct device_node*,char*,int *) ;
 struct device_node* pci_bus_to_OF_node (struct pci_bus*) ;
 scalar_t__ pci_is_root_bus (struct pci_bus*) ;

const char *eeh_pe_loc_get(struct eeh_pe *pe)
{
 struct pci_bus *bus = eeh_pe_bus_get(pe);
 struct device_node *dn;
 const char *loc = ((void*)0);

 while (bus) {
  dn = pci_bus_to_OF_node(bus);
  if (!dn) {
   bus = bus->parent;
   continue;
  }

  if (pci_is_root_bus(bus))
   loc = of_get_property(dn, "ibm,io-base-loc-code", ((void*)0));
  else
   loc = of_get_property(dn, "ibm,slot-location-code",
           ((void*)0));

  if (loc)
   return loc;

  bus = bus->parent;
 }

 return "N/A";
}
