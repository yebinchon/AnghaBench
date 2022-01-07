
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int of_node; } ;
struct pci_dev {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;


 scalar_t__ WARN_ON (int) ;
 struct pci_dev* get_pci_dev (struct device_node*) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (int ,char*,int) ;

struct pci_dev *pnv_pci_get_npu_dev(struct pci_dev *gpdev, int index)
{
 struct device_node *dn;
 struct pci_dev *npdev;

 if (WARN_ON(!gpdev))
  return ((void*)0);


 if (!gpdev->dev.of_node)
  return ((void*)0);


 dn = of_parse_phandle(gpdev->dev.of_node, "ibm,npu", index);
 if (!dn)
  return ((void*)0);

 npdev = get_pci_dev(dn);
 of_node_put(dn);

 return npdev;
}
