
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CFG_PCI_CACHE_LINE_SIZE (int ,int ) ;
 int CFG_PCI_INTERRUPT_LINE (int ,int ) ;
 int CFG_PCI_VENDOR_ID (int ,int ) ;
 int CS5536_EHCI_CLASS_CODE ;
 int CS5536_EHCI_DEVICE_ID ;
 int CS5536_EHCI_RANGE ;
 int CS5536_EHCI_SUB_ID ;
 int CS5536_SUB_VENDOR_ID ;
 int CS5536_USB_INTR ;
 int CS5536_VENDOR_ID ;
 int GLCP_MSR_REG (int ) ;
 int GLCP_SOFT_COM ;

 int PCI_BASE_ADDRESS_SPACE_MEMORY ;


 int PCI_CAPLIST_USB_POINTER ;

 int PCI_CARDBUS_CIS_POINTER ;


 int PCI_COMMAND_MASTER ;
 int PCI_COMMAND_MEMORY ;
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
 int SOFT_BAR_EHCI_FLAG ;
 int USB_CAP ;
 int USB_EHCI ;
 int USB_MSR_REG (int ) ;
 int _rdmsr (int ,int*,int*) ;
 int _wrmsr (int ,int,int) ;

u32 pci_ehci_read_reg(int reg)
{
 u32 conf_data = 0;
 u32 hi, lo;

 switch (reg) {
 case 128:
  conf_data =
      CFG_PCI_VENDOR_ID(CS5536_EHCI_DEVICE_ID, CS5536_VENDOR_ID);
  break;
 case 136:
  _rdmsr(USB_MSR_REG(USB_EHCI), &hi, &lo);
  if (hi & PCI_COMMAND_MASTER)
   conf_data |= PCI_COMMAND_MASTER;
  if (hi & PCI_COMMAND_MEMORY)
   conf_data |= PCI_COMMAND_MEMORY;
  break;
 case 130:
  conf_data |= PCI_STATUS_66MHZ;
  conf_data |= PCI_STATUS_FAST_BACK;
  _rdmsr(SB_MSR_REG(SB_ERROR), &hi, &lo);
  if (lo & SB_PARE_ERR_FLAG)
   conf_data |= PCI_STATUS_PARITY;
  conf_data |= PCI_STATUS_DEVSEL_MEDIUM;
  break;
 case 137:
  _rdmsr(USB_MSR_REG(USB_CAP), &hi, &lo);
  conf_data = lo & 0x000000ff;
  conf_data |= (CS5536_EHCI_CLASS_CODE << 8);
  break;
 case 140:
  conf_data =
      CFG_PCI_CACHE_LINE_SIZE(PCI_NORMAL_HEADER_TYPE,
         PCI_NORMAL_LATENCY_TIMER);
  break;
 case 141:
  _rdmsr(GLCP_MSR_REG(GLCP_SOFT_COM), &hi, &lo);
  if (lo & SOFT_BAR_EHCI_FLAG) {
   conf_data = CS5536_EHCI_RANGE |
       PCI_BASE_ADDRESS_SPACE_MEMORY;
   lo &= ~SOFT_BAR_EHCI_FLAG;
   _wrmsr(GLCP_MSR_REG(GLCP_SOFT_COM), hi, lo);
  } else {
   _rdmsr(USB_MSR_REG(USB_EHCI), &hi, &lo);
   conf_data = lo & 0xfffff000;
  }
  break;
 case 138:
  conf_data = PCI_CARDBUS_CIS_POINTER;
  break;
 case 129:
  conf_data =
      CFG_PCI_VENDOR_ID(CS5536_EHCI_SUB_ID, CS5536_SUB_VENDOR_ID);
  break;
 case 131:
  conf_data = PCI_EXPANSION_ROM_BAR;
  break;
 case 139:
  conf_data = PCI_CAPLIST_USB_POINTER;
  break;
 case 132:
  conf_data =
      CFG_PCI_INTERRUPT_LINE(PCI_DEFAULT_PIN, CS5536_USB_INTR);
  break;
 case 134:
  _rdmsr(USB_MSR_REG(USB_EHCI), &hi, &lo);
  conf_data = (hi & 0x003f0000) >> 16;
  break;
 case 133:
  _rdmsr(USB_MSR_REG(USB_EHCI), &hi, &lo);
  conf_data = (hi & 0x3f000000) >> 24;
  break;
 case 135:
  _rdmsr(USB_MSR_REG(USB_EHCI), &hi, &lo);
  conf_data = hi & 0x00003f00;
  break;
 default:
  break;
 }

 return conf_data;
}
