
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ACC_CAP ;
 int ACC_MSR_REG (int ) ;
 int CFG_PCI_CACHE_LINE_SIZE (int ,int ) ;
 int CFG_PCI_INTERRUPT_LINE (int ,int ) ;
 int CFG_PCI_VENDOR_ID (int ,int ) ;
 int CS5536_ACC_CLASS_CODE ;
 int CS5536_ACC_DEVICE_ID ;
 int CS5536_ACC_INTR ;
 int CS5536_ACC_RANGE ;
 int CS5536_ACC_SUB_ID ;
 int CS5536_SUB_VENDOR_ID ;
 int CS5536_VENDOR_ID ;
 int GLCP_MSR_REG (int ) ;
 int GLCP_SOFT_COM ;
 int GLIU_IOD_BM1 ;
 int GLIU_MSR_REG (int ) ;
 int GLIU_PAE ;

 int PCI_BASE_ADDRESS_SPACE_IO ;


 int PCI_CAPLIST_USB_POINTER ;

 int PCI_CARDBUS_CIS_POINTER ;


 int PCI_COMMAND_IO ;
 int PCI_COMMAND_MASTER ;
 int PCI_DEFAULT_PIN ;
 int PCI_EXPANSION_ROM_BAR ;

 int PCI_NORMAL_HEADER_TYPE ;
 int PCI_NORMAL_LATENCY_TIMER ;


 int PCI_STATUS_66MHZ ;
 int PCI_STATUS_DEVSEL_MEDIUM ;
 int PCI_STATUS_FAST_BACK ;
 int PCI_STATUS_PARITY ;


 int SB_ERROR ;
 int SB_MSR_REG (int ) ;
 int SB_PARE_ERR_FLAG ;
 int SOFT_BAR_ACC_FLAG ;
 int _rdmsr (int ,int*,int*) ;
 int _wrmsr (int ,int,int) ;

u32 pci_acc_read_reg(int reg)
{
 u32 hi, lo;
 u32 conf_data = 0;

 switch (reg) {
 case 128:
  conf_data =
      CFG_PCI_VENDOR_ID(CS5536_ACC_DEVICE_ID, CS5536_VENDOR_ID);
  break;
 case 133:
  _rdmsr(GLIU_MSR_REG(GLIU_IOD_BM1), &hi, &lo);
  if (((lo & 0xfff00000) || (hi & 0x000000ff))
      && ((hi & 0xf0000000) == 0xa0000000))
   conf_data |= PCI_COMMAND_IO;
  _rdmsr(GLIU_MSR_REG(GLIU_PAE), &hi, &lo);
  if ((lo & 0x300) == 0x300)
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
 case 134:
  _rdmsr(ACC_MSR_REG(ACC_CAP), &hi, &lo);
  conf_data = lo & 0x000000ff;
  conf_data |= (CS5536_ACC_CLASS_CODE << 8);
  break;
 case 137:
  conf_data =
      CFG_PCI_CACHE_LINE_SIZE(PCI_NORMAL_HEADER_TYPE,
         PCI_NORMAL_LATENCY_TIMER);
  break;
 case 138:
  _rdmsr(GLCP_MSR_REG(GLCP_SOFT_COM), &hi, &lo);
  if (lo & SOFT_BAR_ACC_FLAG) {
   conf_data = CS5536_ACC_RANGE |
       PCI_BASE_ADDRESS_SPACE_IO;
   lo &= ~SOFT_BAR_ACC_FLAG;
   _wrmsr(GLCP_MSR_REG(GLCP_SOFT_COM), hi, lo);
  } else {
   _rdmsr(GLIU_MSR_REG(GLIU_IOD_BM1), &hi, &lo);
   conf_data = (hi & 0x000000ff) << 12;
   conf_data |= (lo & 0xfff00000) >> 20;
   conf_data |= 0x01;
   conf_data &= ~0x02;
  }
  break;
 case 135:
  conf_data = PCI_CARDBUS_CIS_POINTER;
  break;
 case 129:
  conf_data =
      CFG_PCI_VENDOR_ID(CS5536_ACC_SUB_ID, CS5536_SUB_VENDOR_ID);
  break;
 case 131:
  conf_data = PCI_EXPANSION_ROM_BAR;
  break;
 case 136:
  conf_data = PCI_CAPLIST_USB_POINTER;
  break;
 case 132:
  conf_data =
      CFG_PCI_INTERRUPT_LINE(PCI_DEFAULT_PIN, CS5536_ACC_INTR);
  break;
 default:
  break;
 }

 return conf_data;
}
