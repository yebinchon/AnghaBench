
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CFG_PCI_CACHE_LINE_SIZE (int ,int) ;
 int CFG_PCI_INTERRUPT_LINE (int ,int ) ;
 int CFG_PCI_VENDOR_ID (int ,int ) ;
 int CS5536_IDE_CLASS_CODE ;
 int CS5536_IDE_DEVICE_ID ;
 int CS5536_IDE_INTR ;
 int CS5536_IDE_RANGE ;
 int CS5536_IDE_SUB_ID ;
 int CS5536_SUB_VENDOR_ID ;
 int CS5536_VENDOR_ID ;
 int GLCP_MSR_REG (int ) ;
 int GLCP_SOFT_COM ;
 int GLIU_MSR_REG (int ) ;
 int GLIU_PAE ;
 int IDE_CAP ;
 int IDE_CAST ;
 int IDE_CFG ;
 int IDE_DTC ;
 int IDE_ETC ;
 int IDE_INTERNAL_PM ;
 int IDE_IO_BAR ;
 int IDE_MSR_REG (int ) ;

 int PCI_BASE_ADDRESS_SPACE_IO ;


 int PCI_CAPLIST_POINTER ;

 int PCI_CARDBUS_CIS_POINTER ;


 int PCI_COMMAND_IO ;
 int PCI_COMMAND_MASTER ;
 int PCI_DEFAULT_PIN ;
 int PCI_EXPANSION_ROM_BAR ;






 int PCI_NORMAL_HEADER_TYPE ;


 int PCI_STATUS_66MHZ ;
 int PCI_STATUS_DEVSEL_MEDIUM ;
 int PCI_STATUS_FAST_BACK ;
 int PCI_STATUS_PARITY ;


 int SB_CTRL ;
 int SB_ERROR ;
 int SB_MSR_REG (int ) ;
 int SB_PARE_ERR_FLAG ;
 int SOFT_BAR_IDE_FLAG ;
 int _rdmsr (int ,int*,int*) ;
 int _wrmsr (int ,int,int) ;

u32 pci_ide_read_reg(int reg)
{
 u32 conf_data = 0;
 u32 hi, lo;

 switch (reg) {
 case 128:
  conf_data =
      CFG_PCI_VENDOR_ID(CS5536_IDE_DEVICE_ID, CS5536_VENDOR_ID);
  break;
 case 138:
  _rdmsr(IDE_MSR_REG(IDE_IO_BAR), &hi, &lo);
  if (lo & 0xfffffff0)
   conf_data |= PCI_COMMAND_IO;
  _rdmsr(GLIU_MSR_REG(GLIU_PAE), &hi, &lo);
  if ((lo & 0x30) == 0x30)
   conf_data |= PCI_COMMAND_MASTER;
  break;
 case 130:
  conf_data |= PCI_STATUS_66MHZ;
  conf_data |= PCI_STATUS_FAST_BACK;
  _rdmsr(SB_MSR_REG(SB_ERROR), &hi, &lo);
  if (lo & SB_PARE_ERR_FLAG)
   conf_data |= PCI_STATUS_PARITY;
  conf_data |= PCI_STATUS_DEVSEL_MEDIUM;
  break;
 case 139:
  _rdmsr(IDE_MSR_REG(IDE_CAP), &hi, &lo);
  conf_data = lo & 0x000000ff;
  conf_data |= (CS5536_IDE_CLASS_CODE << 8);
  break;
 case 142:
  _rdmsr(SB_MSR_REG(SB_CTRL), &hi, &lo);
  hi &= 0x000000f8;
  conf_data = CFG_PCI_CACHE_LINE_SIZE(PCI_NORMAL_HEADER_TYPE, hi);
  break;
 case 143:
  _rdmsr(GLCP_MSR_REG(GLCP_SOFT_COM), &hi, &lo);
  if (lo & SOFT_BAR_IDE_FLAG) {
   conf_data = CS5536_IDE_RANGE |
       PCI_BASE_ADDRESS_SPACE_IO;
   lo &= ~SOFT_BAR_IDE_FLAG;
   _wrmsr(GLCP_MSR_REG(GLCP_SOFT_COM), hi, lo);
  } else {
   _rdmsr(IDE_MSR_REG(IDE_IO_BAR), &hi, &lo);
   conf_data = lo & 0xfffffff0;
   conf_data |= 0x01;
   conf_data &= ~0x02;
  }
  break;
 case 140:
  conf_data = PCI_CARDBUS_CIS_POINTER;
  break;
 case 129:
  conf_data =
      CFG_PCI_VENDOR_ID(CS5536_IDE_SUB_ID, CS5536_SUB_VENDOR_ID);
  break;
 case 131:
  conf_data = PCI_EXPANSION_ROM_BAR;
  break;
 case 141:
  conf_data = PCI_CAPLIST_POINTER;
  break;
 case 132:
  conf_data =
      CFG_PCI_INTERRUPT_LINE(PCI_DEFAULT_PIN, CS5536_IDE_INTR);
  break;
 case 136:
  _rdmsr(IDE_MSR_REG(IDE_CFG), &hi, &lo);
  conf_data = lo;
  break;
 case 135:
  _rdmsr(IDE_MSR_REG(IDE_DTC), &hi, &lo);
  conf_data = lo;
  break;
 case 137:
  _rdmsr(IDE_MSR_REG(IDE_CAST), &hi, &lo);
  conf_data = lo;
  break;
 case 134:
  _rdmsr(IDE_MSR_REG(IDE_ETC), &hi, &lo);
  conf_data = lo;
  break;
 case 133:
  _rdmsr(IDE_MSR_REG(IDE_INTERNAL_PM), &hi, &lo);
  conf_data = lo;
  break;
 default:
  break;
 }

 return conf_data;
}
