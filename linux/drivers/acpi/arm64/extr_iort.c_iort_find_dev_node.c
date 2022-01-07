
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int fwnode; } ;
struct pci_bus {struct device dev; struct pci_bus* parent; } ;
struct acpi_iort_node {int dummy; } ;
struct TYPE_2__ {struct pci_bus* bus; } ;


 int ACPI_IORT_NODE_NAMED_COMPONENT ;
 int ACPI_IORT_NODE_PCI_ROOT_COMPLEX ;
 int dev_is_pci (struct device*) ;
 struct acpi_iort_node* iort_get_iort_node (int ) ;
 int iort_match_node_callback ;
 struct acpi_iort_node* iort_scan_node (int ,int ,struct device*) ;
 int pci_is_root_bus (struct pci_bus*) ;
 TYPE_1__* to_pci_dev (struct device*) ;

__attribute__((used)) static struct acpi_iort_node *iort_find_dev_node(struct device *dev)
{
 struct pci_bus *pbus;

 if (!dev_is_pci(dev)) {
  struct acpi_iort_node *node;






  node = iort_get_iort_node(dev->fwnode);
  if (node)
   return node;





  return iort_scan_node(ACPI_IORT_NODE_NAMED_COMPONENT,
          iort_match_node_callback, dev);
 }


 pbus = to_pci_dev(dev)->bus;
 while (!pci_is_root_bus(pbus))
  pbus = pbus->parent;

 return iort_scan_node(ACPI_IORT_NODE_PCI_ROOT_COMPLEX,
         iort_match_node_callback, &pbus->dev);
}
