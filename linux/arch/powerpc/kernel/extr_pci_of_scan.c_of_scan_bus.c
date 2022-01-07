
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_bus {int dummy; } ;
struct device_node {int dummy; } ;


 int __of_scan_bus (struct device_node*,struct pci_bus*,int ) ;

void of_scan_bus(struct device_node *node, struct pci_bus *bus)
{
 __of_scan_bus(node, bus, 0);
}
