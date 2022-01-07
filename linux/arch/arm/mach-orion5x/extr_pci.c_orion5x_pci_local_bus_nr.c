
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int PCI_P2P_BUS_MASK ;
 int PCI_P2P_BUS_OFFS ;
 int PCI_P2P_CONF ;
 int readl (int ) ;

__attribute__((used)) static int orion5x_pci_local_bus_nr(void)
{
 u32 conf = readl(PCI_P2P_CONF);
 return((conf & PCI_P2P_BUS_MASK) >> PCI_P2P_BUS_OFFS);
}
