
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_bus {int dummy; } ;


 int CONFIG_CMD (struct pci_bus*,unsigned int,int) ;
 int PCIBIOS_SUCCESSFUL ;
 int PCICFG_ADDR ;
 int PCICFG_DATA ;
 int readl (int ) ;
 int writel (int ,int ) ;

__attribute__((used)) static int
puv3_read_config(struct pci_bus *bus, unsigned int devfn, int where,
   int size, u32 *value)
{
 writel(CONFIG_CMD(bus, devfn, where), PCICFG_ADDR);
 switch (size) {
 case 1:
  *value = (readl(PCICFG_DATA) >> ((where & 3) * 8)) & 0xFF;
  break;
 case 2:
  *value = (readl(PCICFG_DATA) >> ((where & 2) * 8)) & 0xFFFF;
  break;
 case 4:
  *value = readl(PCICFG_DATA);
  break;
 }
 return PCIBIOS_SUCCESSFUL;
}
