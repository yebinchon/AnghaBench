
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {struct device_node* hdr_type; } ;
struct pci_bus {int dummy; } ;
struct eeh_dev {int mode; } ;
struct device_node {int dummy; } ;
typedef int __be32 ;


 int EEH_DEV_REMOVED ;
 int PCI_DN (struct device_node*) ;
 struct pci_dev* of_create_pci_dev (struct device_node*,struct pci_bus*,int) ;
 int of_device_is_available (struct device_node*) ;
 int * of_get_property (struct device_node*,char*,int*) ;
 int of_read_number (int const*,int) ;
 int pci_dev_put (struct pci_dev*) ;
 struct pci_dev* pci_get_slot (struct pci_bus*,int) ;
 struct eeh_dev* pdn_to_eeh_dev (int ) ;
 int pr_debug (char*,struct device_node*) ;

__attribute__((used)) static struct pci_dev *of_scan_pci_dev(struct pci_bus *bus,
       struct device_node *dn)
{
 struct pci_dev *dev = ((void*)0);
 const __be32 *reg;
 int reglen, devfn;




 pr_debug("  * %pOF\n", dn);
 if (!of_device_is_available(dn))
  return ((void*)0);

 reg = of_get_property(dn, "reg", &reglen);
 if (reg == ((void*)0) || reglen < 20)
  return ((void*)0);
 devfn = (of_read_number(reg, 1) >> 8) & 0xff;


 dev = pci_get_slot(bus, devfn);
 if (dev) {
  pci_dev_put(dev);
  return dev;
 }
 dev = of_create_pci_dev(dn, bus, devfn);
 if (!dev)
  return ((void*)0);

 pr_debug("  dev header type: %x\n", dev->hdr_type);
 return dev;
}
