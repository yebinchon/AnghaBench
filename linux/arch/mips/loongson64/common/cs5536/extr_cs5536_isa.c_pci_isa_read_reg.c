
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CFG_PCI_CACHE_LINE_SIZE (int ,int) ;
 int CFG_PCI_INTERRUPT_LINE (int,int) ;
 int CFG_PCI_VENDOR_ID (int ,int ) ;
 int CS5536_ISA_CLASS_CODE ;
 int CS5536_ISA_DEVICE_ID ;
 int CS5536_ISA_SUB_ID ;
 int CS5536_SUB_VENDOR_ID ;
 int CS5536_VENDOR_ID ;
 int DIVIL_LBAR_SMB ;
 int DIVIL_MSR_REG (int ) ;
 int GLCP_CHIP_REV_ID ;
 int GLCP_MSR_REG (int ) ;






 int PCI_BRIDGE_HEADER_TYPE ;


 int PCI_CAPLIST_POINTER ;

 int PCI_CARDBUS_CIS_POINTER ;


 int PCI_COMMAND_IO ;
 int PCI_EXPANSION_ROM_BAR ;



 int PCI_STATUS_66MHZ ;
 int PCI_STATUS_DETECTED_PARITY ;
 int PCI_STATUS_DEVSEL_MEDIUM ;
 int PCI_STATUS_FAST_BACK ;
 int PCI_STATUS_REC_MASTER_ABORT ;
 int PCI_STATUS_REC_TARGET_ABORT ;
 int PCI_STATUS_SIG_TARGET_ABORT ;


 int SB_CTRL ;
 int SB_ERROR ;
 int SB_MAR_ERR_FLAG ;
 int SB_MSR_REG (int ) ;
 int SB_PARE_ERR_FLAG ;
 int SB_TAR_ERR_FLAG ;
 int SB_TAS_ERR_FLAG ;
 int _rdmsr (int ,int*,int*) ;
 int pci_isa_read_bar (int) ;

u32 pci_isa_read_reg(int reg)
{
 u32 conf_data = 0;
 u32 hi, lo;

 switch (reg) {
 case 128:
  conf_data =
      CFG_PCI_VENDOR_ID(CS5536_ISA_DEVICE_ID, CS5536_VENDOR_ID);
  break;
 case 133:


  _rdmsr(DIVIL_MSR_REG(DIVIL_LBAR_SMB), &hi, &lo);
  if (hi & 0x01)
   conf_data |= PCI_COMMAND_IO;
  break;
 case 130:
  conf_data |= PCI_STATUS_66MHZ;
  conf_data |= PCI_STATUS_DEVSEL_MEDIUM;
  conf_data |= PCI_STATUS_FAST_BACK;

  _rdmsr(SB_MSR_REG(SB_ERROR), &hi, &lo);
  if (lo & SB_TAS_ERR_FLAG)
   conf_data |= PCI_STATUS_SIG_TARGET_ABORT;
  if (lo & SB_TAR_ERR_FLAG)
   conf_data |= PCI_STATUS_REC_TARGET_ABORT;
  if (lo & SB_MAR_ERR_FLAG)
   conf_data |= PCI_STATUS_REC_MASTER_ABORT;
  if (lo & SB_PARE_ERR_FLAG)
   conf_data |= PCI_STATUS_DETECTED_PARITY;
  break;
 case 134:
  _rdmsr(GLCP_MSR_REG(GLCP_CHIP_REV_ID), &hi, &lo);
  conf_data = lo & 0x000000ff;
  conf_data |= (CS5536_ISA_CLASS_CODE << 8);
  break;
 case 137:
  _rdmsr(SB_MSR_REG(SB_CTRL), &hi, &lo);
  hi &= 0x000000f8;
  conf_data = CFG_PCI_CACHE_LINE_SIZE(PCI_BRIDGE_HEADER_TYPE, hi);
  break;




 case 143:
  return pci_isa_read_bar(0);
  break;
 case 142:
  return pci_isa_read_bar(1);
  break;
 case 141:
  return pci_isa_read_bar(2);
  break;
 case 140:
  break;
 case 139:
  return pci_isa_read_bar(4);
  break;
 case 138:
  return pci_isa_read_bar(5);
  break;
 case 135:
  conf_data = PCI_CARDBUS_CIS_POINTER;
  break;
 case 129:
  conf_data =
      CFG_PCI_VENDOR_ID(CS5536_ISA_SUB_ID, CS5536_SUB_VENDOR_ID);
  break;
 case 131:
  conf_data = PCI_EXPANSION_ROM_BAR;
  break;
 case 136:
  conf_data = PCI_CAPLIST_POINTER;
  break;
 case 132:

  conf_data = CFG_PCI_INTERRUPT_LINE(0x00, 0x00);
  break;
 default:
  break;
 }

 return conf_data;
}
