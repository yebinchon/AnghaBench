
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u64 ;
typedef int u32 ;
struct device_node {int dummy; } ;


 int ENODEV ;
 int ENXIO ;
 int PCI_DN (struct device_node*) ;
 int PCI_SLOT_ID (int ,int) ;
 int of_device_is_compatible (struct device_node*,char*) ;
 struct device_node* of_get_parent (struct device_node*) ;
 int of_node_put (struct device_node*) ;
 int of_property_read_u32 (struct device_node*,char*,int*) ;
 int of_property_read_u64 (struct device_node*,char*,int *) ;

int pnv_pci_get_slot_id(struct device_node *np, uint64_t *id)
{
 struct device_node *parent = np;
 u32 bdfn;
 u64 phbid;
 int ret;

 ret = of_property_read_u32(np, "reg", &bdfn);
 if (ret)
  return -ENXIO;

 bdfn = ((bdfn & 0x00ffff00) >> 8);
 while ((parent = of_get_parent(parent))) {
  if (!PCI_DN(parent)) {
   of_node_put(parent);
   break;
  }

  if (!of_device_is_compatible(parent, "ibm,ioda2-phb") &&
      !of_device_is_compatible(parent, "ibm,ioda3-phb")) {
   of_node_put(parent);
   continue;
  }

  ret = of_property_read_u64(parent, "ibm,opal-phbid", &phbid);
  if (ret) {
   of_node_put(parent);
   return -ENXIO;
  }

  *id = PCI_SLOT_ID(phbid, bdfn);
  return 0;
 }

 return -ENODEV;
}
