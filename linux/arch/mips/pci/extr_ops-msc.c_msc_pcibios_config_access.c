
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_bus {unsigned char number; } ;


 int MSC01_PCI_CFGADDR ;
 unsigned char MSC01_PCI_CFGADDR_BNUM_SHF ;
 unsigned char MSC01_PCI_CFGADDR_DNUM_SHF ;
 unsigned char MSC01_PCI_CFGADDR_FNUM_SHF ;
 int MSC01_PCI_CFGADDR_RNUM_SHF ;
 int MSC01_PCI_CFGDATA ;
 int MSC01_PCI_INTCFG_MA_BIT ;
 int MSC01_PCI_INTCFG_TA_BIT ;
 int MSC01_PCI_INTSTAT ;
 int MSC_READ (int ,int) ;
 int MSC_WRITE (int ,int) ;
 unsigned char PCI_ACCESS_WRITE ;
 unsigned char PCI_FUNC (unsigned int) ;
 unsigned char PCI_SLOT (unsigned int) ;

__attribute__((used)) static int msc_pcibios_config_access(unsigned char access_type,
 struct pci_bus *bus, unsigned int devfn, int where, u32 * data)
{
 unsigned char busnum = bus->number;
 u32 intr;


 MSC_WRITE(MSC01_PCI_INTSTAT,
    (MSC01_PCI_INTCFG_MA_BIT | MSC01_PCI_INTCFG_TA_BIT));

 MSC_WRITE(MSC01_PCI_CFGADDR,
    ((busnum << MSC01_PCI_CFGADDR_BNUM_SHF) |
     (PCI_SLOT(devfn) << MSC01_PCI_CFGADDR_DNUM_SHF) |
     (PCI_FUNC(devfn) << MSC01_PCI_CFGADDR_FNUM_SHF) |
     ((where / 4) << MSC01_PCI_CFGADDR_RNUM_SHF)));


 if (access_type == PCI_ACCESS_WRITE)
  MSC_WRITE(MSC01_PCI_CFGDATA, *data);
 else
  MSC_READ(MSC01_PCI_CFGDATA, *data);


 MSC_READ(MSC01_PCI_INTSTAT, intr);
 if (intr & (MSC01_PCI_INTCFG_MA_BIT | MSC01_PCI_INTCFG_TA_BIT)) {



  MSC_WRITE(MSC01_PCI_INTSTAT,
     (MSC01_PCI_INTCFG_MA_BIT | MSC01_PCI_INTCFG_TA_BIT));

  return -1;
 }

 return 0;
}
