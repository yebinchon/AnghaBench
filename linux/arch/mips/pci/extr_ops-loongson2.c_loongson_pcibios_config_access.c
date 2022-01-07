
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_bus {int number; } ;


 void* CFG_SPACE_REG (int) ;
 int ID_SEL_BEGIN ;
 int LOONGSON_PCICMD ;
 int LOONGSON_PCICMD_MABORT_CLR ;
 int LOONGSON_PCICMD_MTABORT_CLR ;
 int LOONGSON_PCIMAP_CFG ;
 int MAX_DEV_NUM ;


 int PCI_FUNC (unsigned int) ;
 int PCI_IDSEL_CS5536 ;
 int PCI_MSR_CTRL ;
 int PCI_SLOT (unsigned int) ;
 int cpu_to_le32 (int) ;
 int cs5536_pci_conf_read4 (int,int) ;
 int cs5536_pci_conf_write4 (int,int,int) ;
 int le32_to_cpu (int ) ;
 int mmiowb () ;
 int readl (void*) ;
 int writel (int ,void*) ;

__attribute__((used)) static int loongson_pcibios_config_access(unsigned char access_type,
          struct pci_bus *bus,
          unsigned int devfn, int where,
          u32 *data)
{
 u32 busnum = bus->number;
 u32 addr, type;
 u32 dummy;
 void *addrp;
 int device = PCI_SLOT(devfn);
 int function = PCI_FUNC(devfn);
 int reg = where & ~3;

 if (busnum == 0) {
  if (device > MAX_DEV_NUM)
   return -1;

  addr = (1 << (device + ID_SEL_BEGIN)) | (function << 8) | reg;
  type = 0;
 } else {

  addr = (busnum << 16) | (device << 11) | (function << 8) | reg;
  type = 0x10000;
 }


 LOONGSON_PCICMD |= LOONGSON_PCICMD_MABORT_CLR | LOONGSON_PCICMD_MTABORT_CLR;


 LOONGSON_PCIMAP_CFG = (addr >> 16) | type;


 dummy = LOONGSON_PCIMAP_CFG;
 mmiowb();

 addrp = CFG_SPACE_REG(addr & 0xffff);
 if (access_type == 128)
  writel(cpu_to_le32(*data), addrp);
 else
  *data = le32_to_cpu(readl(addrp));


 if (LOONGSON_PCICMD & (LOONGSON_PCICMD_MABORT_CLR |
        LOONGSON_PCICMD_MTABORT_CLR)) {



  LOONGSON_PCICMD |= (LOONGSON_PCICMD_MABORT_CLR |
      LOONGSON_PCICMD_MTABORT_CLR);

  return -1;
 }

 return 0;

}
