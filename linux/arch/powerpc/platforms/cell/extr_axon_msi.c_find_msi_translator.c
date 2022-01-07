
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct irq_domain {struct axon_msic* host_data; } ;
struct device_node {int dummy; } ;
struct axon_msic {int dummy; } ;
typedef int phandle ;


 int dev_dbg (int *,char*,...) ;
 struct irq_domain* irq_find_host (struct device_node*) ;
 struct device_node* of_find_node_by_phandle (int const) ;
 struct device_node* of_get_next_parent (struct device_node*) ;
 int * of_get_property (struct device_node*,char*,int *) ;
 struct device_node* of_node_get (int ) ;
 int of_node_put (struct device_node*) ;
 int pci_device_to_OF_node (struct pci_dev*) ;

__attribute__((used)) static struct axon_msic *find_msi_translator(struct pci_dev *dev)
{
 struct irq_domain *irq_domain;
 struct device_node *dn, *tmp;
 const phandle *ph;
 struct axon_msic *msic = ((void*)0);

 dn = of_node_get(pci_device_to_OF_node(dev));
 if (!dn) {
  dev_dbg(&dev->dev, "axon_msi: no pci_dn found\n");
  return ((void*)0);
 }

 for (; dn; dn = of_get_next_parent(dn)) {
  ph = of_get_property(dn, "msi-translator", ((void*)0));
  if (ph)
   break;
 }

 if (!ph) {
  dev_dbg(&dev->dev,
   "axon_msi: no msi-translator property found\n");
  goto out_error;
 }

 tmp = dn;
 dn = of_find_node_by_phandle(*ph);
 of_node_put(tmp);
 if (!dn) {
  dev_dbg(&dev->dev,
   "axon_msi: msi-translator doesn't point to a node\n");
  goto out_error;
 }

 irq_domain = irq_find_host(dn);
 if (!irq_domain) {
  dev_dbg(&dev->dev, "axon_msi: no irq_domain found for node %pOF\n",
   dn);
  goto out_error;
 }

 msic = irq_domain->host_data;

out_error:
 of_node_put(dn);

 return msic;
}
