
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct resource {int flags; } ;
struct pci_pbm_info {int dummy; } ;
struct pci_dev {int bus; } ;
struct pci_bus_region {int start; int end; } ;
struct pci_bus {struct resource** resource; } ;


 int APB_IO_ADDRESS_MAP ;
 int APB_MEM_ADDRESS_MAP ;
 int IORESOURCE_IO ;
 int IORESOURCE_MEM ;
 int apb_calc_first_last (int ,int*,int*) ;
 int pci_read_config_byte (struct pci_dev*,int ,int *) ;
 int pcibios_bus_to_resource (int ,struct resource*,struct pci_bus_region*) ;

__attribute__((used)) static void apb_fake_ranges(struct pci_dev *dev,
       struct pci_bus *bus,
       struct pci_pbm_info *pbm)
{
 struct pci_bus_region region;
 struct resource *res;
 u32 first, last;
 u8 map;

 pci_read_config_byte(dev, APB_IO_ADDRESS_MAP, &map);
 apb_calc_first_last(map, &first, &last);
 res = bus->resource[0];
 res->flags = IORESOURCE_IO;
 region.start = (first << 21);
 region.end = (last << 21) + ((1 << 21) - 1);
 pcibios_bus_to_resource(dev->bus, res, &region);

 pci_read_config_byte(dev, APB_MEM_ADDRESS_MAP, &map);
 apb_calc_first_last(map, &first, &last);
 res = bus->resource[1];
 res->flags = IORESOURCE_MEM;
 region.start = (first << 29);
 region.end = (last << 29) + ((1 << 29) - 1);
 pcibios_bus_to_resource(dev->bus, res, &region);
}
