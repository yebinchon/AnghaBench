
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CS5536_UART1_INTR ;
 int CS5536_UART2_INTR ;
 int DIVIL_MSR_REG (int ) ;
 int PCI_COMMAND_IO ;


 int PCI_STATUS_DETECTED_PARITY ;
 int PCI_STATUS_REC_MASTER_ABORT ;
 int PCI_STATUS_REC_TARGET_ABORT ;
 int PCI_STATUS_SIG_TARGET_ABORT ;


 int PIC_YSEL_HIGH ;
 int SB_CTRL ;
 int SB_ERROR ;
 int SB_MAR_ERR_EN ;
 int SB_MAR_ERR_FLAG ;
 int SB_MSR_REG (int ) ;
 int SB_PARE_ERR_EN ;
 int SB_PARE_ERR_FLAG ;
 int SB_TAR_ERR_EN ;
 int SB_TAR_ERR_FLAG ;
 int SB_TAS_ERR_EN ;
 int SB_TAS_ERR_FLAG ;
 int _rdmsr (int ,int*,int*) ;
 int _wrmsr (int ,int,int) ;
 int divil_lbar_disable () ;
 int divil_lbar_enable () ;
 int pci_isa_write_bar (int,int) ;

void pci_isa_write_reg(int reg, u32 value)
{
 u32 hi = 0, lo = value;
 u32 temp;

 switch (reg) {
 case 132:
  if (value & PCI_COMMAND_IO)
   divil_lbar_enable();
  else
   divil_lbar_disable();
  break;
 case 130:
  _rdmsr(SB_MSR_REG(SB_ERROR), &hi, &lo);
  temp = lo & 0x0000ffff;
  if ((value & PCI_STATUS_SIG_TARGET_ABORT) &&
      (lo & SB_TAS_ERR_EN))
   temp |= SB_TAS_ERR_FLAG;

  if ((value & PCI_STATUS_REC_TARGET_ABORT) &&
      (lo & SB_TAR_ERR_EN))
   temp |= SB_TAR_ERR_FLAG;

  if ((value & PCI_STATUS_REC_MASTER_ABORT)
      && (lo & SB_MAR_ERR_EN))
   temp |= SB_MAR_ERR_FLAG;

  if ((value & PCI_STATUS_DETECTED_PARITY)
      && (lo & SB_PARE_ERR_EN))
   temp |= SB_PARE_ERR_FLAG;

  lo = temp;
  _wrmsr(SB_MSR_REG(SB_ERROR), hi, lo);
  break;
 case 133:
  value &= 0x0000ff00;
  _rdmsr(SB_MSR_REG(SB_CTRL), &hi, &lo);
  hi &= 0xffffff00;
  hi |= (value >> 8);
  _wrmsr(SB_MSR_REG(SB_CTRL), hi, lo);
  break;
 case 139:
  pci_isa_write_bar(0, value);
  break;
 case 138:
  pci_isa_write_bar(1, value);
  break;
 case 137:
  pci_isa_write_bar(2, value);
  break;
 case 136:
  pci_isa_write_bar(3, value);
  break;
 case 135:
  pci_isa_write_bar(4, value);
  break;
 case 134:
  pci_isa_write_bar(5, value);
  break;
 case 129:
  _rdmsr(DIVIL_MSR_REG(PIC_YSEL_HIGH), &hi, &lo);

  lo &= ~(0xf << 24);
  if (value)
   lo |= (CS5536_UART1_INTR << 24);
  _wrmsr(DIVIL_MSR_REG(PIC_YSEL_HIGH), hi, lo);
  break;
 case 128:
  _rdmsr(DIVIL_MSR_REG(PIC_YSEL_HIGH), &hi, &lo);

  lo &= ~(0xf << 28);
  if (value)
   lo |= (CS5536_UART2_INTR << 28);
  _wrmsr(DIVIL_MSR_REG(PIC_YSEL_HIGH), hi, lo);
  break;
 case 131:
  if (value) {

   _rdmsr(SB_MSR_REG(SB_ERROR), &hi, &lo);
   lo |= 0x00000063;
   _wrmsr(SB_MSR_REG(SB_ERROR), hi, lo);
  }

 default:

  break;
 }
}
